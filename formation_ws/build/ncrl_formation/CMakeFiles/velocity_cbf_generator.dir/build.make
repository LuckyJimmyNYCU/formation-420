# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/ubuntu/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/ubuntu/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/formation_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/formation_ws/build

# Include any dependencies generated for this target.
include ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/compiler_depend.make

# Include the progress variables for this target.
include ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/progress.make

# Include the compile flags for this target's objects.
include ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/flags.make

ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.o: ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/flags.make
ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.o: /home/ubuntu/formation_ws/src/ncrl_formation/node/velocity_cbf_generator_node.cpp
ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.o: ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/formation_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.o"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.o -MF CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.o.d -o CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.o -c /home/ubuntu/formation_ws/src/ncrl_formation/node/velocity_cbf_generator_node.cpp

ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.i"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/formation_ws/src/ncrl_formation/node/velocity_cbf_generator_node.cpp > CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.i

ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.s"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/formation_ws/src/ncrl_formation/node/velocity_cbf_generator_node.cpp -o CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.s

ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.o: ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/flags.make
ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.o: /home/ubuntu/formation_ws/src/ncrl_formation/src/getch.cpp
ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.o: ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/formation_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.o"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.o -MF CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.o.d -o CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.o -c /home/ubuntu/formation_ws/src/ncrl_formation/src/getch.cpp

ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.i"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/formation_ws/src/ncrl_formation/src/getch.cpp > CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.i

ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.s"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/formation_ws/src/ncrl_formation/src/getch.cpp -o CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.s

# Object files for target velocity_cbf_generator
velocity_cbf_generator_OBJECTS = \
"CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.o" \
"CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.o"

# External object files for target velocity_cbf_generator
velocity_cbf_generator_EXTERNAL_OBJECTS =

/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/node/velocity_cbf_generator_node.cpp.o
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/src/getch.cpp.o
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/build.make
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/libtf.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/libtf2_ros.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/libactionlib.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/libmessage_filters.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/libroscpp.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/lib/aarch64-linux-gnu/libboost_chrono.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/libtf2.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/librosconsole.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/lib/aarch64-linux-gnu/libboost_regex.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/librostime.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/lib/aarch64-linux-gnu/libboost_date_time.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /opt/ros/noetic/lib/libcpp_common.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/lib/aarch64-linux-gnu/libboost_system.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/lib/aarch64-linux-gnu/libboost_thread.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/local/lib/aarch64-linux-gnu/libOsqpEigen.so.0.7.0
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: /usr/local/lib/aarch64-linux-gnu/libosqp.so
/home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator: ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/formation_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/velocity_cbf_generator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/build: /home/ubuntu/formation_ws/devel/lib/flight_control/velocity_cbf_generator
.PHONY : ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/build

ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/clean:
	cd /home/ubuntu/formation_ws/build/ncrl_formation && $(CMAKE_COMMAND) -P CMakeFiles/velocity_cbf_generator.dir/cmake_clean.cmake
.PHONY : ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/clean

ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/depend:
	cd /home/ubuntu/formation_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/formation_ws/src /home/ubuntu/formation_ws/src/ncrl_formation /home/ubuntu/formation_ws/build /home/ubuntu/formation_ws/build/ncrl_formation /home/ubuntu/formation_ws/build/ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ncrl_formation/CMakeFiles/velocity_cbf_generator.dir/depend

