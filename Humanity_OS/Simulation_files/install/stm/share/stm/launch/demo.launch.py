from moveit_configs_utils import MoveItConfigsBuilder
from moveit_configs_utils.launches import generate_demo_launch
from launch import LaunchDescription
from launch.actions import IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from ament_index_python.packages import get_package_share_directory
import os

def generate_launch_description():
    moveit_config = (
        MoveItConfigsBuilder("final_arm_urdf", package_name="stm")
        .to_moveit_configs()
    )

    demo = generate_demo_launch(moveit_config)

    controllers = IncludeLaunchDescription(
        PythonLaunchDescriptionSource(
            os.path.join(
                get_package_share_directory("stm"),
                "launch",
                "spawn_controllers.launch.py",
            )
        )
    )

    return LaunchDescription([
        demo,
        controllers,
    ])
