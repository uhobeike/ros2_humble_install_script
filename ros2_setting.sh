#/bin/bash -xve

echo -e "\n## Execute ${BASH_SOURCE[0]} $(date +'%Y/%m/%d %H:%M:%S')"  >> ~/.bashrc

grep "source /opt/ros/humble/setup.bash" ~/.bashrc
if [ $? = 0 ]; then
  :
else
  echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
fi

grep "export ROS_DOMAIN_ID=" ~/.bashrc
if [ $? = 0 ]; then
  :
else
  echo "export ROS_DOMAIN_ID=1" >> ~/.bashrc
fi

grep "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" ~/.bashrc
if [ $? = 0 ]; then
  :
else
  echo "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" >> ~/.bashrc
fi

grep "export _colcon_cd_root=" ~/.bashrc
if [ $? = 0 ]; then
  :
else
  echo "source /usr/share/colcon_cd/function/colcon_cd.sh" >> ~/.bashrc
  echo "export _colcon_cd_root=~" >> ~/.bashrc
fi

grep "export RCUTILS_COLORIZED_OUTPUT=" ~/.bashrc
if [ $? = 0 ]; then
  :
else
  echo "export RCUTILS_COLORIZED_OUTPUT=1" >> ~/.bashrc
fi

grep "export ROS_LOCALHOST_ONLY=" ~/.bashrc
if [ $? = 0 ]; then
  :
else
  echo "export ROS_LOCALHOST_ONLY=1" >> ~/.bashrc
fi

