#/bin/bash -xve

sudo apt update && sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update -y
sudo apt upgrade -y

sudo apt install ros-humble-ros-base python3-colcon-common-extensions
sudo apt install python3-colcon-common-extensions

grep "source /opt/ros/humble/setup.bash" ~/.bashrc
if [ $? = 0 ]; then
  :
else
  echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
fi
