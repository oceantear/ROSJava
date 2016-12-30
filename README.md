ROSJava

How to build *.jar for custom

<h>mkdir -p ~/rosjava/src </h>
 wstool init -j4 ~/rosjava/src https://raw.githubusercontent.com/rosjava/rosjava/kinetic/rosjava.rosinstall
  source /opt/ros/kinetic/setup.bash
  cd rosjava
  rosdep update
  rosdep install --from-paths src -i -y
  catkin_make
