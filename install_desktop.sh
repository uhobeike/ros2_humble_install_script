#/bin/bash -xve

sudo apt update && sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update -y
sudo apt upgrade -y

sudo apt install -y ros-humble-desktop python3-colcon-common-extensions python3-rosdep2
sudo apt -y install gazebo
sudo apt install -y ros-humble-gazebo-*

grep "source /opt/ros/humble/setup.bash" ~/.bashrc
if [ $? = 0 ]; then
  :
else
  echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
fi

grep "export ROS_DOMAIN_ID" ~/.bashrc
if [ $? = 0 ]; then
  :
else
  echo "export ROS_DOMAIN_ID=1" >> ~/.bashrc
fi
