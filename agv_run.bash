#!/bin/bash
docker run -it --rm \
-h agv_base \
--device /dev/linobase \
--device /dev/linolidar \
--privileged -v /dev/bus/usb:/dev/bus/usb \
--net host \
-v $(pwd)/agv:/root/catkin_ws/src/agv \
--env ROS_IP=$(ip -4 addr show wlan0 | grep -oP "(?<=inet ).*(?=/)") \
--env ROS_HOSTNAME=$(ip -4 addr show wlan0 | grep -oP "(?<=inet ).*(?=/)") \
--env ROS_MASTER_URI=http://$(ip -4 addr show wlan0 | grep -oP "(?<=inet ).*(?=/)"):11311 \
agv:latest \
/bin/bash -c "cd ~/catkin_ws && source ~/catkin_ws/devel/setup.bash && catkin_make && source ~/catkin_ws/devel/setup.bash && roslaunch agv setup.launch"
