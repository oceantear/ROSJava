ROSJava

How to build *.jar for custom

＃＃ mkdir -p ~/rosjava/src 
##wstool init -j4 ~/rosjava/src https://raw.githubusercontent.com/rosjava/rosjava/kinetic/rosjava.rosinstall
  source /opt/ros/kinetic/setup.bash
## <br>cd rosjava</br>
## <br>rosdep update</br>
## <br>rosdep install --from-paths src -i -y</br>
## <br>catkin_make</br>

##You can find *.jar in home/user_name/rosjava/devel/share/maven/org/ros/rosjava_messages/jimmy_srv
