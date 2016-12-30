ROSJava

How to build *.jar for custom

<br>mkdir -p ~/rosjava/src </br>
<br>wstool init -j4 ~/rosjava/src https://raw.githubusercontent.com/rosjava/rosjava/kinetic/rosjava.rosinstall
  source /opt/ros/kinetic/setup.bash</br>
<br>cd rosjava</br>
<br>rosdep update</br>
<br>rosdep install --from-paths src -i -y</br>
<br>catkin_make</br>
