# Export Ignition environment variables

@[if INSTALLSPACE]@
export IGN_LAUNCH_CONFIG_PATH=@(CMAKE_INSTALL_PREFIX)/@(CATKIN_PACKAGE_SHARE_DESTINATION)/launch
export IGN_LAUNCH_PLUGIN_PATH=@(CMAKE_INSTALL_PREFIX)/@(CATKIN_PACKAGE_LIB_DESTINATION)
export IGN_GAZEBO_RESOURCE_PATH=@(CMAKE_INSTALL_PREFIX)/@(CATKIN_PACKAGE_SHARE_DESTINATION)/worlds
export SUBT_IMAGES_PATH=@(CMAKE_INSTALL_PREFIX)/@(CATKIN_PACKAGE_SHARE_DESTINATION)/images
export IGN_TRANSPORT_TOPIC_STATISTICS=1
@[else]@
export IGN_LAUNCH_CONFIG_PATH=@(CMAKE_CURRENT_SOURCE_DIR)/launch
export IGN_LAUNCH_PLUGIN_PATH=@(CATKIN_DEVEL_PREFIX)/@(CATKIN_PACKAGE_LIB_DESTINATION)
export IGN_GAZEBO_RESOURCE_PATH=@(CMAKE_CURRENT_SOURCE_DIR)/worlds
export SUBT_IMAGES_PATH=@(CMAKE_CURRENT_SOURCE_DIR)/images
export IGN_TRANSPORT_TOPIC_STATISTICS=1
@[end if]@
