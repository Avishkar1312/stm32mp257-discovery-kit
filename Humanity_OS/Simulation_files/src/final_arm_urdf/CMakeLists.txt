cmake_minimum_required(VERSION 3.5)
project(final_arm_urdf)

find_package(ament_cmake REQUIRED)

install(
  DIRECTORY
    urdf
    meshes
    launch
    rviz
  DESTINATION share/${PROJECT_NAME}
)

ament_package()
