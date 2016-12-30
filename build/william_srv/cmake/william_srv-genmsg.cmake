# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "william_srv: 7 messages, 1 services")

set(MSG_I_FLAGS "-Iwilliam_srv:/home/jimmy/rosjava/src/william_srv/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genjava REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(william_srv_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg" NAME_WE)
add_custom_target(_william_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "william_srv" "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg" NAME_WE)
add_custom_target(_william_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "william_srv" "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg" "william_srv/CompositeA:william_srv/CompositeB"
)

get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg" NAME_WE)
add_custom_target(_william_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "william_srv" "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg" ""
)

get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg" NAME_WE)
add_custom_target(_william_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "william_srv" "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg" ""
)

get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg" NAME_WE)
add_custom_target(_william_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "william_srv" "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg" ""
)

get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg" NAME_WE)
add_custom_target(_william_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "william_srv" "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg" "william_srv/TestString"
)

get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_william_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "william_srv" "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg" NAME_WE)
add_custom_target(_william_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "william_srv" "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg" ""
)

#
#  langs = gencpp;geneus;genjava;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv
)
_generate_msg_cpp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv
)
_generate_msg_cpp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv
)
_generate_msg_cpp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv
)
_generate_msg_cpp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv
)
_generate_msg_cpp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg;/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv
)
_generate_msg_cpp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv
)

### Generating Services
_generate_srv_cpp(william_srv
  "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv
)

### Generating Module File
_generate_module_cpp(william_srv
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(william_srv_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(william_srv_generate_messages william_srv_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_cpp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_cpp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_cpp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_cpp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_cpp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_cpp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(william_srv_generate_messages_cpp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_cpp _william_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(william_srv_gencpp)
add_dependencies(william_srv_gencpp william_srv_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS william_srv_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv
)
_generate_msg_eus(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv
)
_generate_msg_eus(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv
)
_generate_msg_eus(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv
)
_generate_msg_eus(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv
)
_generate_msg_eus(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg;/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv
)
_generate_msg_eus(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv
)

### Generating Services
_generate_srv_eus(william_srv
  "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv
)

### Generating Module File
_generate_module_eus(william_srv
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(william_srv_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(william_srv_generate_messages william_srv_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_eus _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_eus _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_eus _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_eus _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_eus _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_eus _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(william_srv_generate_messages_eus _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_eus _william_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(william_srv_geneus)
add_dependencies(william_srv_geneus william_srv_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS william_srv_generate_messages_eus)

### Section generating for lang: genjava
### Generating Messages
_generate_msg_java(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv
)
_generate_msg_java(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv
)
_generate_msg_java(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv
)
_generate_msg_java(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv
)
_generate_msg_java(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv
)
_generate_msg_java(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg;/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv
)
_generate_msg_java(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv
)

### Generating Services
_generate_srv_java(william_srv
  "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv
)

### Generating Module File
_generate_module_java(william_srv
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv
  "${ALL_GEN_OUTPUT_FILES_java}"
)

add_custom_target(william_srv_generate_messages_java
  DEPENDS ${ALL_GEN_OUTPUT_FILES_java}
)
add_dependencies(william_srv_generate_messages william_srv_generate_messages_java)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_java _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_java _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_java _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_java _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_java _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_java _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(william_srv_generate_messages_java _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_java _william_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(william_srv_genjava)
add_dependencies(william_srv_genjava william_srv_generate_messages_java)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS william_srv_generate_messages_java)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv
)
_generate_msg_lisp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv
)
_generate_msg_lisp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv
)
_generate_msg_lisp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv
)
_generate_msg_lisp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv
)
_generate_msg_lisp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg;/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv
)
_generate_msg_lisp(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv
)

### Generating Services
_generate_srv_lisp(william_srv
  "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv
)

### Generating Module File
_generate_module_lisp(william_srv
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(william_srv_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(william_srv_generate_messages william_srv_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_lisp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_lisp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_lisp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_lisp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_lisp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_lisp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(william_srv_generate_messages_lisp _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_lisp _william_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(william_srv_genlisp)
add_dependencies(william_srv_genlisp william_srv_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS william_srv_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv
)
_generate_msg_nodejs(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv
)
_generate_msg_nodejs(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv
)
_generate_msg_nodejs(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv
)
_generate_msg_nodejs(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv
)
_generate_msg_nodejs(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg;/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv
)
_generate_msg_nodejs(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv
)

### Generating Services
_generate_srv_nodejs(william_srv
  "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv
)

### Generating Module File
_generate_module_nodejs(william_srv
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(william_srv_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(william_srv_generate_messages william_srv_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_nodejs _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_nodejs _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_nodejs _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_nodejs _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_nodejs _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_nodejs _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(william_srv_generate_messages_nodejs _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_nodejs _william_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(william_srv_gennodejs)
add_dependencies(william_srv_gennodejs william_srv_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS william_srv_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv
)
_generate_msg_py(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv
)
_generate_msg_py(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv
)
_generate_msg_py(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv
)
_generate_msg_py(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv
)
_generate_msg_py(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg"
  "${MSG_I_FLAGS}"
  "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg;/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv
)
_generate_msg_py(william_srv
  "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv
)

### Generating Services
_generate_srv_py(william_srv
  "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv
)

### Generating Module File
_generate_module_py(william_srv
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(william_srv_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(william_srv_generate_messages william_srv_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestHeader.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_py _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/Composite.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_py _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeA.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_py _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/CompositeB.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_py _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestString.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_py _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestArrays.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_py _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(william_srv_generate_messages_py _william_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/rosjava/src/william_srv/msg/TestPrimitives.msg" NAME_WE)
add_dependencies(william_srv_generate_messages_py _william_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(william_srv_genpy)
add_dependencies(william_srv_genpy william_srv_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS william_srv_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/william_srv
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(william_srv_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/william_srv
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(william_srv_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genjava_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/william_srv
    DESTINATION ${genjava_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_java)
  add_dependencies(william_srv_generate_messages_java std_msgs_generate_messages_java)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/william_srv
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(william_srv_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/william_srv
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(william_srv_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/william_srv
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(william_srv_generate_messages_py std_msgs_generate_messages_py)
endif()
