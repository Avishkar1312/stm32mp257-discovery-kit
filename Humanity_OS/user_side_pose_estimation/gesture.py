"""
Wrist & Elbow Angle Tracker
============================
Uses MediaPipe Pose Landmarker (Tasks API) to detect body landmarks from
a webcam feed and calculates the angles at the elbow and wrist joints
for both arms.

Angles computed:
  • Elbow angle  – the angle formed at the elbow between the shoulder,
                   elbow, and wrist (flexion / extension).
  • Wrist angle  – the angle formed at the wrist between the elbow,
                   wrist, and the index-finger MCP.
  • Wrist rotation – estimated pronation/supination via the
                     index-pinky vector relative to vertical.

Controls:
  q / ESC  – quit
"""

import os
import sys
import math
import time

import cv2
import numpy as np
import mediapipe as mp

from mediapipe.tasks.python import vision
from mediapipe.tasks.python.vision import (
    PoseLandmark,
    PoseLandmarker,
    PoseLandmarkerOptions,
    PoseLandmarkerResult,
    PoseLandmarksConnections,
    RunningMode,
    drawing_utils,
)
from mediapipe.tasks import python as tasks_python

# ──────────────────────────────────────────────
#  Model path
# ──────────────────────────────────────────────
MODEL_PATH = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                          "pose_landmarker.task")

if not os.path.isfile(MODEL_PATH):
    print(f"ERROR: Model file not found at {MODEL_PATH}")
    print("Download it with:")
    print("  Invoke-WebRequest -o pose_landmarker.task "
          "https://storage.googleapis.com/mediapipe-models/"
          "pose_landmarker/pose_landmarker_lite/float16/latest/"
          "pose_landmarker_lite.task")
    sys.exit(1)

# ──────────────────────────────────────────────
#  Landmark indices
# ──────────────────────────────────────────────
L_SHOULDER = PoseLandmark.LEFT_SHOULDER
L_ELBOW    = PoseLandmark.LEFT_ELBOW
L_WRIST    = PoseLandmark.LEFT_WRIST
L_INDEX    = PoseLandmark.LEFT_INDEX
L_PINKY    = PoseLandmark.LEFT_PINKY

R_SHOULDER = PoseLandmark.RIGHT_SHOULDER
R_ELBOW    = PoseLandmark.RIGHT_ELBOW
R_WRIST    = PoseLandmark.RIGHT_WRIST
R_INDEX    = PoseLandmark.RIGHT_INDEX
R_PINKY    = PoseLandmark.RIGHT_PINKY


# ──────────────────────────────────────────────
#  Geometry helpers
# ──────────────────────────────────────────────
def calculate_angle(a, b, c):
    """
    Calculate the angle (in degrees) at point *b* given three
    (x, y, z) points a → b → c.
    """
    a = np.array(a)
    b = np.array(b)
    c = np.array(c)

    ba = a - b
    bc = c - b

    cosine = np.dot(ba, bc) / (np.linalg.norm(ba) * np.linalg.norm(bc) + 1e-8)
    cosine = np.clip(cosine, -1.0, 1.0)
    return round(math.degrees(math.acos(cosine)), 1)


def lm_to_coords(landmark):
    """Extract (x, y, z) from a NormalizedLandmark."""
    return (landmark.x, landmark.y, landmark.z)


def lm_to_pixel(landmark, w, h):
    """Convert normalised landmark to pixel coordinates."""
    return (int(landmark.x * w), int(landmark.y * h))


# ──────────────────────────────────────────────
#  Drawing helpers
# ──────────────────────────────────────────────
COLOR_LEFT  = (0, 255, 128)    # green-ish
COLOR_RIGHT = (255, 128, 0)    # blue-ish
COLOR_BG    = (30, 30, 30)
FONT        = cv2.FONT_HERSHEY_SIMPLEX


def draw_angle_label(frame, position, label, angle, color):
    """Draw a text label with a dark background rectangle."""
    text = f"{label}: {angle}"
    (tw, th), baseline = cv2.getTextSize(text, FONT, 0.55, 2)
    x, y = position
    cv2.rectangle(frame, (x - 4, y - th - 6),
                  (x + tw + 4, y + baseline + 4), COLOR_BG, cv2.FILLED)
    cv2.putText(frame, text, (x, y), FONT, 0.55, color, 2, cv2.LINE_AA)


def draw_skeleton(frame, landmarks, w, h):
    """Draw pose skeleton connections on the frame."""
    all_connections = (
        list(PoseLandmarksConnections.POSE_LANDMARKS)
    )
    for connection in all_connections:
        start = landmarks[connection.start]
        end = landmarks[connection.end]
        start_px = lm_to_pixel(start, w, h)
        end_px = lm_to_pixel(end, w, h)
        cv2.line(frame, start_px, end_px, (200, 200, 200), 2, cv2.LINE_AA)

    # Draw dots on all landmarks
    for lm in landmarks:
        px = lm_to_pixel(lm, w, h)
        cv2.circle(frame, px, 4, (100, 100, 255), cv2.FILLED)


# ──────────────────────────────────────────────
#  Main
# ──────────────────────────────────────────────
def main():
    cap = cv2.VideoCapture(0)
    if not cap.isOpened():
        print("ERROR: Cannot open webcam.")
        return

    cap.set(cv2.CAP_PROP_FRAME_WIDTH, 1280)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 720)

    print("╔══════════════════════════════════════════════════╗")
    print("║   Wrist & Elbow Angle Tracker (MediaPipe Pose)  ║")
    print("║   Press 'q' or ESC to quit                      ║")
    print("╚══════════════════════════════════════════════════╝")

    # Use VIDEO mode — we process frames synchronously
    options = PoseLandmarkerOptions(
        base_options=tasks_python.BaseOptions(model_asset_path=MODEL_PATH),
        running_mode=RunningMode.VIDEO,
        num_poses=1,
        min_pose_detection_confidence=0.5,
        min_pose_presence_confidence=0.5,
        min_tracking_confidence=0.5,
    )

    with PoseLandmarker.create_from_options(options) as landmarker:
        frame_ts = 0  # monotonically increasing timestamp in ms

        while cap.isOpened():
            ret, frame = cap.read()
            if not ret:
                print("Failed to read from webcam.")
                break

            frame = cv2.flip(frame, 1)  # mirror
            h, w, _ = frame.shape

            # Convert frame to MediaPipe Image
            rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
            mp_image = mp.Image(image_format=mp.ImageFormat.SRGB, data=rgb)

            # Detect pose
            frame_ts += 33  # ≈30 fps increment
            result = landmarker.detect_for_video(mp_image, frame_ts)

            if result.pose_landmarks and len(result.pose_landmarks) > 0:
                landmarks = result.pose_landmarks[0]  # first detected pose

                # Draw skeleton
                draw_skeleton(frame, landmarks, w, h)

                # ── Left arm ────────────────────────
                l_shoulder = lm_to_coords(landmarks[L_SHOULDER])
                l_elbow    = lm_to_coords(landmarks[L_ELBOW])
                l_wrist    = lm_to_coords(landmarks[L_WRIST])
                l_index    = lm_to_coords(landmarks[L_INDEX])
                l_pinky    = lm_to_coords(landmarks[L_PINKY])

                l_elbow_px = lm_to_pixel(landmarks[L_ELBOW], w, h)
                l_wrist_px = lm_to_pixel(landmarks[L_WRIST], w, h)

                left_elbow_angle = calculate_angle(l_shoulder, l_elbow, l_wrist)
                left_wrist_angle = calculate_angle(l_elbow, l_wrist, l_index)

                l_hand_vec = np.array([l_index[0] - l_pinky[0],
                                       l_index[1] - l_pinky[1]])
                l_wrist_rotation = round(
                    math.degrees(math.atan2(l_hand_vec[0], -l_hand_vec[1])), 1)

                draw_angle_label(frame,
                                 (l_elbow_px[0] - 60, l_elbow_px[1] - 20),
                                 "L Elbow", f"{left_elbow_angle}\u00b0",
                                 COLOR_LEFT)
                draw_angle_label(frame,
                                 (l_wrist_px[0] - 60, l_wrist_px[1] - 20),
                                 "L Wrist", f"{left_wrist_angle}\u00b0",
                                 COLOR_LEFT)
                draw_angle_label(frame,
                                 (l_wrist_px[0] - 60, l_wrist_px[1] + 20),
                                 "L Rotation", f"{l_wrist_rotation}\u00b0",
                                 COLOR_LEFT)

                cv2.circle(frame, l_elbow_px, 8, COLOR_LEFT, cv2.FILLED)
                cv2.circle(frame, l_wrist_px, 8, COLOR_LEFT, cv2.FILLED)

                # ── Right arm ───────────────────────
                r_shoulder = lm_to_coords(landmarks[R_SHOULDER])
                r_elbow    = lm_to_coords(landmarks[R_ELBOW])
                r_wrist    = lm_to_coords(landmarks[R_WRIST])
                r_index    = lm_to_coords(landmarks[R_INDEX])
                r_pinky    = lm_to_coords(landmarks[R_PINKY])

                r_elbow_px = lm_to_pixel(landmarks[R_ELBOW], w, h)
                r_wrist_px = lm_to_pixel(landmarks[R_WRIST], w, h)

                right_elbow_angle = calculate_angle(r_shoulder, r_elbow, r_wrist)
                right_wrist_angle = calculate_angle(r_elbow, r_wrist, r_index)

                r_hand_vec = np.array([r_index[0] - r_pinky[0],
                                       r_index[1] - r_pinky[1]])
                r_wrist_rotation = round(
                    math.degrees(math.atan2(r_hand_vec[0], -r_hand_vec[1])), 1)

                draw_angle_label(frame,
                                 (r_elbow_px[0] + 10, r_elbow_px[1] - 20),
                                 "R Elbow", f"{right_elbow_angle}\u00b0",
                                 COLOR_RIGHT)
                draw_angle_label(frame,
                                 (r_wrist_px[0] + 10, r_wrist_px[1] - 20),
                                 "R Wrist", f"{right_wrist_angle}\u00b0",
                                 COLOR_RIGHT)
                draw_angle_label(frame,
                                 (r_wrist_px[0] + 10, r_wrist_px[1] + 20),
                                 "R Rotation", f"{r_wrist_rotation}\u00b0",
                                 COLOR_RIGHT)

                cv2.circle(frame, r_elbow_px, 8, COLOR_RIGHT, cv2.FILLED)
                cv2.circle(frame, r_wrist_px, 8, COLOR_RIGHT, cv2.FILLED)

                # ── Console output ──────────────────
                print(
                    f"\r  L-Elbow {left_elbow_angle:6.1f}\u00b0  |  "
                    f"L-Wrist {left_wrist_angle:6.1f}\u00b0  |  "
                    f"L-Rot {l_wrist_rotation:6.1f}\u00b0  ||  "
                    f"R-Elbow {right_elbow_angle:6.1f}\u00b0  |  "
                    f"R-Wrist {right_wrist_angle:6.1f}\u00b0  |  "
                    f"R-Rot {r_wrist_rotation:6.1f}\u00b0",
                    end="",
                )

            # ── HUD overlay ──────────────────────
            cv2.rectangle(frame, (0, 0), (w, 40), COLOR_BG, cv2.FILLED)
            cv2.putText(frame, "Wrist & Elbow Angle Tracker  |  Press 'q' to quit",
                        (10, 28), FONT, 0.65, (200, 200, 200), 1, cv2.LINE_AA)

            cv2.imshow("Angle Tracker", frame)

            key = cv2.waitKey(1) & 0xFF
            if key == ord("q") or key == 27:
                break

    cap.release()
    cv2.destroyAllWindows()
    print("\nDone.")


if __name__ == "__main__":
    main()
