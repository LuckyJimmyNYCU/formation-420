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
include ncrl_formation/CMakeFiles/motive.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ncrl_formation/CMakeFiles/motive.dir/compiler_depend.make

# Include the progress variables for this target.
include ncrl_formation/CMakeFiles/motive.dir/progress.make

# Include the compile flags for this target's objects.
include ncrl_formation/CMakeFiles/motive.dir/flags.make

ncrl_formation/CMakeFiles/motive.dir/src/motive.cpp.o: ncrl_formation/CMakeFiles/motive.dir/flags.make
ncrl_formation/CMakeFiles/motive.dir/src/motive.cpp.o: /home/ubuntu/formation_ws/src/ncrl_formation/src/motive.cpp
ncrl_formation/CMakeFiles/motive.dir/src/motive.cpp.o: ncrl_formation/CMakeFiles/motive.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/formation_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ncrl_formation/CMakeFiles/motive.dir/src/motive.cpp.o"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ncrl_formation/CMakeFiles/motive.dir/src/motive.cpp.o -MF CMakeFiles/motive.dir/src/motive.cpp.o.d -o CMakeFiles/motive.dir/src/motive.cpp.o -c /home/ubuntu/formation_ws/src/ncrl_formation/src/motive.cpp

ncrl_formation/CMakeFiles/motive.dir/src/motive.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/motive.dir/src/motive.cpp.i"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/formation_ws/src/ncrl_formation/src/motive.cpp > CMakeFiles/motive.dir/src/motive.cpp.i

ncrl_formation/CMakeFiles/motive.dir/src/motive.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/motive.dir/src/motive.cpp.s"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/formation_ws/src/ncrl_formation/src/motive.cpp -o CMakeFiles/motive.dir/src/motive.cpp.s

# Object files for target motive
motive_OBJECTS = \
"CMakeFiles/motive.dir/src/motive.cpp.o"

# External object files for target motive
motive_EXTERNAL_OBJECTS =

/home/ubuntu/formation_ws/devel/lib/flight_control/motive: ncrl_formation/CMakeFiles/motive.dir/src/motive.cpp.o
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: ncrl_formation/CMakeFiles/motive.dir/build.make
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/libtf.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/libtf2_ros.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/libactionlib.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/libmessage_filters.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/libroscpp.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /usr/lib/aarch64-linux-gnu/libboost_chrono.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/libtf2.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/librosconsole.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /usr/lib/aarch64-linux-gnu/libboost_regex.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/librostime.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /usr/lib/aarch64-linux-gnu/libboost_date_time.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /opt/ros/noetic/lib/libcpp_common.so
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /usr/lib/aarch64-linux-gnu/libboost_system.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /usr/lib/aarch64-linux-gnu/libboost_thread.so.1.71.0
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/ubuntu/formation_ws/devel/lib/flight_control/motive: ncrl_formation/CMakeFiles/motive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/formation_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ubuntu/formation_ws/devel/lib/flight_control/motive"
	cd /home/ubuntu/formation_ws/build/ncrl_formation && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/motive.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ncrl_formation/CMakeFiles/motive.dir/build: /home/ubuntu/formation_ws/devel/lib/flight_control/motive
.PHONY : ncrl_formation/CMakeFiles/motive.dir/build

ncrl_formation/CMakeFiles/motive.dir/clean:
	cd /home/ubuntu/formation_ws/build/ncrl_formation && $(CMAKE_COMMAND) -P CMakeFiles/motive.dir/cmake_clean.cmake
.PHONY : ncrl_formation/CMakeFiles/motive.dir/clean

ncrl_formation/CMakeFiles/motive.dir/depend:
	cd /home/ubuntu/formation_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/formation_ws/src /home/ubuntu/formation_ws/src/ncrl_formation /home/ubuntu/formation_ws/build /home/ubuntu/formation_ws/build/ncrl_formation /home/ubuntu/formation_ws/build/ncrl_formation/CMakeFiles/motive.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ncrl_formation/CMakeFiles/motive.dir/depend

