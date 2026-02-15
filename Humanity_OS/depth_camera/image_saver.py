import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
import numpy as np
import cv2
import os

SAVE_DIR = "/home/sedrica/Desktop/captured"

class ImageSaver(Node):

    def __init__(self):
        super().__init__('image_saver')

        os.makedirs(SAVE_DIR, exist_ok=True)

        self.counter = 1

        self.subscription = self.create_subscription(
            Image,
            '/camera/camera/color/image_raw',
            self.callback,
            10
        )

        self.get_logger().info("Image Saver Started")

    def callback(self, msg):

        # Convert ROS Image to numpy
        img = np.frombuffer(msg.data, dtype=np.uint8)
        img = img.reshape(msg.height, msg.width, 3)

        # If encoding is rgb8 → convert to BGR for OpenCV
        img = cv2.cvtColor(img, cv2.COLOR_RGB2BGR)

        filename = os.path.join(SAVE_DIR, f"image{self.counter}.jpg")

        cv2.imwrite(filename, img)

        self.get_logger().info(f"Saved {filename}")

        self.counter += 1


def main():
    rclpy.init()
    node = ImageSaver()
    rclpy.spin(node)
    rclpy.shutdown()


if __name__ == '__main__':
    main()
