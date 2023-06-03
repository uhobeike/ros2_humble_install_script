#/bin/bash -xve

grep "export ROS_DOMAIN_ID" ~/.bashrc
if [ $? = 0 ]; then
  :
else
  echo "export ROS_DOMAIN_ID=1" >> ~/.bashrc
fi