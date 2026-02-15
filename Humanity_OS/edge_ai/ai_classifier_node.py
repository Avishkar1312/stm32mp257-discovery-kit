#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
import numpy as np
from stai_mpu import stai_mpu_network

MODEL_PATH = "/usr/local/x-linux-ai/image-classification/models/mobilenet/mobilenet_v2_1.0_224_int8_per_tensor.nb"

class AIClassifier(Node):

    def __init__(self):
        super().__init__('ai_classifier')

        self.model = stai_mpu_network(
            model_path=MODEL_PATH,
            use_hw_acceleration=True
        )

        input_info = self.model.get_input_infos()[0]
        self.input_height = input_info.get_shape()[1]
        self.input_width = input_info.get_shape()[2]

        self.subscription = self.create_subscription(
            Image,
            '/camera/color/image_raw',
            self.listener_callback,
            10
        )

        self.get_logger().info("AI Classifier Ready")

    def listener_callback(self, msg):

        # Convert ROS Image → numpy (RGB8)
        frame = np.frombuffer(msg.data, dtype=np.uint8)
        frame = frame.reshape(msg.height, msg.width, 3)

        # Resize by simple center crop (no OpenCV dependency)
        h, w, _ = frame.shape
        start_h = (h - self.input_height) // 2
        start_w = (w - self.input_width) // 2
        frame = frame[start_h:start_h+self.input_height,
                      start_w:start_w+self.input_width]

        input_data = np.expand_dims(frame, axis=0).astype(np.uint8)

        self.model.set_input(0, input_data)
        self.model.run()

        output = self.model.get_output(0)
        prediction = np.argmax(output)

        self.get_logger().info(f"Prediction: {prediction}")


def main(args=None):
    rclpy.init(args=args)
    node = AIClassifier()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()

