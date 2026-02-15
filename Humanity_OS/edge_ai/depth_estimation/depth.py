import numpy as np
import cv2
import tflite_runtime.interpreter as tflite
import argparse
import os

# --- CONFIGURATION ---
DEFAULT_MODEL = "fast_depth_320_int8_pc.tflite"
DELEGATE_PATH = "/usr/lib/libvx_delegate.so"

def main():
    parser = argparse.ArgumentParser(description='Run Depth Estimation on a static image')
    parser.add_argument('-i', '--image', required=True, help='Path to input image file')
    parser.add_argument('-m', '--model', default=DEFAULT_MODEL, help='Path to .tflite model')
    args = parser.parse_args()

    # 1. LOAD MODEL & NPU DELEGATE
    print(f"Loading model: {args.model}")
    if not os.path.exists(DELEGATE_PATH):
        print("Error: NPU Delegate not found. Are you on the STM32MP2?")
        return

    ext_delegate = tflite.load_delegate(DELEGATE_PATH)
    interpreter = tflite.Interpreter(model_path=args.model, experimental_delegates=[ext_delegate])
    interpreter.allocate_tensors()

    # Get Input/Output Details
    input_details = interpreter.get_input_details()
    output_details = interpreter.get_output_details()
    
    h = input_details[0]['shape'][1]
    w = input_details[0]['shape'][2]
    input_dtype = input_details[0]['dtype']
    
    print(f"Model expects: {w}x{h}, {input_dtype}")

    # 2. PREPROCESS IMAGE
    print(f"Loading image: {args.image}")
    img_orig = cv2.imread(args.image)
    if img_orig is None:
        print("Error: Could not read image.")
        return
    # Resize to match model input (e.g., 224x224)
    img_resized = cv2.resize(img_orig, (w, h))
    
    # Convert to Model Format (Int8 vs Float32)
    # FastDepth Int8 usually expects signed int8 [-128, 127] or uint8 [0, 255]
    input_data = np.expand_dims(img_resized, axis=0) # Add batch dimension
    
    if input_dtype == np.int8:
        # Convert [0, 255] -> [-128, 127]
        input_data = input_data.astype(np.float32)
        input_data = input_data - 128
        input_data = input_data.astype(np.int8)
    elif input_dtype == np.float32:
        # Normalize to [0, 1] or [-1, 1] depending on training
        input_data = input_data.astype(np.float32) / 255.0

    # 3. RUN INFERENCE
    print("Running Inference on NPU...")
    interpreter.set_tensor(input_details[0]['index'], input_data)
    interpreter.invoke()

    # 4. PROCESS OUTPUT
    raw_output = interpreter.get_tensor(output_details[0]['index'])
    # Remove batch dimension -> (224, 224)
    depth_map = np.squeeze(raw_output)

    # Normalize output to 0-255 for visualization
    depth_norm = cv2.normalize(depth_map, None, 0, 255, cv2.NORM_MINMAX)
    depth_uint8 = depth_norm.astype(np.uint8)

    # Apply Color Map (Jet is standard for depth: Blue=Close, Red=Far)
    depth_color = cv2.applyColorMap(depth_uint8, cv2.COLORMAP_JET)

    # Resize back to original image size (optional, for comparison)
    output_final = cv2.resize(depth_color, (img_orig.shape[1], img_orig.shape[0]))

    # 5. SAVE RESULT
    output_filename = "depth_result.jpg"
    cv2.imwrite(output_filename, output_final)
    print(f"Success! Saved depth map to: {output_filename}")

if __name__ == "__main__":
    main()
