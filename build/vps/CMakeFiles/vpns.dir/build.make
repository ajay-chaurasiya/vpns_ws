# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ajay/vpns_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ajay/vpns_ws/build

# Include any dependencies generated for this target.
include vps/CMakeFiles/vpns.dir/depend.make

# Include the progress variables for this target.
include vps/CMakeFiles/vpns.dir/progress.make

# Include the compile flags for this target's objects.
include vps/CMakeFiles/vpns.dir/flags.make

vps/CMakeFiles/vpns.dir/src/positioning.cpp.o: vps/CMakeFiles/vpns.dir/flags.make
vps/CMakeFiles/vpns.dir/src/positioning.cpp.o: /home/ajay/vpns_ws/src/vps/src/positioning.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ajay/vpns_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vps/CMakeFiles/vpns.dir/src/positioning.cpp.o"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vpns.dir/src/positioning.cpp.o -c /home/ajay/vpns_ws/src/vps/src/positioning.cpp

vps/CMakeFiles/vpns.dir/src/positioning.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vpns.dir/src/positioning.cpp.i"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ajay/vpns_ws/src/vps/src/positioning.cpp > CMakeFiles/vpns.dir/src/positioning.cpp.i

vps/CMakeFiles/vpns.dir/src/positioning.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vpns.dir/src/positioning.cpp.s"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ajay/vpns_ws/src/vps/src/positioning.cpp -o CMakeFiles/vpns.dir/src/positioning.cpp.s

vps/CMakeFiles/vpns.dir/src/positioning.cpp.o.requires:

.PHONY : vps/CMakeFiles/vpns.dir/src/positioning.cpp.o.requires

vps/CMakeFiles/vpns.dir/src/positioning.cpp.o.provides: vps/CMakeFiles/vpns.dir/src/positioning.cpp.o.requires
	$(MAKE) -f vps/CMakeFiles/vpns.dir/build.make vps/CMakeFiles/vpns.dir/src/positioning.cpp.o.provides.build
.PHONY : vps/CMakeFiles/vpns.dir/src/positioning.cpp.o.provides

vps/CMakeFiles/vpns.dir/src/positioning.cpp.o.provides.build: vps/CMakeFiles/vpns.dir/src/positioning.cpp.o


vps/CMakeFiles/vpns.dir/src/calibration.cpp.o: vps/CMakeFiles/vpns.dir/flags.make
vps/CMakeFiles/vpns.dir/src/calibration.cpp.o: /home/ajay/vpns_ws/src/vps/src/calibration.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ajay/vpns_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object vps/CMakeFiles/vpns.dir/src/calibration.cpp.o"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vpns.dir/src/calibration.cpp.o -c /home/ajay/vpns_ws/src/vps/src/calibration.cpp

vps/CMakeFiles/vpns.dir/src/calibration.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vpns.dir/src/calibration.cpp.i"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ajay/vpns_ws/src/vps/src/calibration.cpp > CMakeFiles/vpns.dir/src/calibration.cpp.i

vps/CMakeFiles/vpns.dir/src/calibration.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vpns.dir/src/calibration.cpp.s"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ajay/vpns_ws/src/vps/src/calibration.cpp -o CMakeFiles/vpns.dir/src/calibration.cpp.s

vps/CMakeFiles/vpns.dir/src/calibration.cpp.o.requires:

.PHONY : vps/CMakeFiles/vpns.dir/src/calibration.cpp.o.requires

vps/CMakeFiles/vpns.dir/src/calibration.cpp.o.provides: vps/CMakeFiles/vpns.dir/src/calibration.cpp.o.requires
	$(MAKE) -f vps/CMakeFiles/vpns.dir/build.make vps/CMakeFiles/vpns.dir/src/calibration.cpp.o.provides.build
.PHONY : vps/CMakeFiles/vpns.dir/src/calibration.cpp.o.provides

vps/CMakeFiles/vpns.dir/src/calibration.cpp.o.provides.build: vps/CMakeFiles/vpns.dir/src/calibration.cpp.o


vps/CMakeFiles/vpns.dir/src/compute.cpp.o: vps/CMakeFiles/vpns.dir/flags.make
vps/CMakeFiles/vpns.dir/src/compute.cpp.o: /home/ajay/vpns_ws/src/vps/src/compute.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ajay/vpns_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object vps/CMakeFiles/vpns.dir/src/compute.cpp.o"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vpns.dir/src/compute.cpp.o -c /home/ajay/vpns_ws/src/vps/src/compute.cpp

vps/CMakeFiles/vpns.dir/src/compute.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vpns.dir/src/compute.cpp.i"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ajay/vpns_ws/src/vps/src/compute.cpp > CMakeFiles/vpns.dir/src/compute.cpp.i

vps/CMakeFiles/vpns.dir/src/compute.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vpns.dir/src/compute.cpp.s"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ajay/vpns_ws/src/vps/src/compute.cpp -o CMakeFiles/vpns.dir/src/compute.cpp.s

vps/CMakeFiles/vpns.dir/src/compute.cpp.o.requires:

.PHONY : vps/CMakeFiles/vpns.dir/src/compute.cpp.o.requires

vps/CMakeFiles/vpns.dir/src/compute.cpp.o.provides: vps/CMakeFiles/vpns.dir/src/compute.cpp.o.requires
	$(MAKE) -f vps/CMakeFiles/vpns.dir/build.make vps/CMakeFiles/vpns.dir/src/compute.cpp.o.provides.build
.PHONY : vps/CMakeFiles/vpns.dir/src/compute.cpp.o.provides

vps/CMakeFiles/vpns.dir/src/compute.cpp.o.provides.build: vps/CMakeFiles/vpns.dir/src/compute.cpp.o


vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o: vps/CMakeFiles/vpns.dir/flags.make
vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o: /home/ajay/vpns_ws/src/vps/src/aStarSearch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ajay/vpns_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vpns.dir/src/aStarSearch.cpp.o -c /home/ajay/vpns_ws/src/vps/src/aStarSearch.cpp

vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vpns.dir/src/aStarSearch.cpp.i"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ajay/vpns_ws/src/vps/src/aStarSearch.cpp > CMakeFiles/vpns.dir/src/aStarSearch.cpp.i

vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vpns.dir/src/aStarSearch.cpp.s"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ajay/vpns_ws/src/vps/src/aStarSearch.cpp -o CMakeFiles/vpns.dir/src/aStarSearch.cpp.s

vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o.requires:

.PHONY : vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o.requires

vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o.provides: vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o.requires
	$(MAKE) -f vps/CMakeFiles/vpns.dir/build.make vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o.provides.build
.PHONY : vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o.provides

vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o.provides.build: vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o


vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o: vps/CMakeFiles/vpns.dir/flags.make
vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o: /home/ajay/vpns_ws/src/vps/src/navigationCommands.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ajay/vpns_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vpns.dir/src/navigationCommands.cpp.o -c /home/ajay/vpns_ws/src/vps/src/navigationCommands.cpp

vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vpns.dir/src/navigationCommands.cpp.i"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ajay/vpns_ws/src/vps/src/navigationCommands.cpp > CMakeFiles/vpns.dir/src/navigationCommands.cpp.i

vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vpns.dir/src/navigationCommands.cpp.s"
	cd /home/ajay/vpns_ws/build/vps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ajay/vpns_ws/src/vps/src/navigationCommands.cpp -o CMakeFiles/vpns.dir/src/navigationCommands.cpp.s

vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o.requires:

.PHONY : vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o.requires

vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o.provides: vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o.requires
	$(MAKE) -f vps/CMakeFiles/vpns.dir/build.make vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o.provides.build
.PHONY : vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o.provides

vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o.provides.build: vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o


# Object files for target vpns
vpns_OBJECTS = \
"CMakeFiles/vpns.dir/src/positioning.cpp.o" \
"CMakeFiles/vpns.dir/src/calibration.cpp.o" \
"CMakeFiles/vpns.dir/src/compute.cpp.o" \
"CMakeFiles/vpns.dir/src/aStarSearch.cpp.o" \
"CMakeFiles/vpns.dir/src/navigationCommands.cpp.o"

# External object files for target vpns
vpns_EXTERNAL_OBJECTS =

/home/ajay/vpns_ws/devel/lib/vpns/vpns: vps/CMakeFiles/vpns.dir/src/positioning.cpp.o
/home/ajay/vpns_ws/devel/lib/vpns/vpns: vps/CMakeFiles/vpns.dir/src/calibration.cpp.o
/home/ajay/vpns_ws/devel/lib/vpns/vpns: vps/CMakeFiles/vpns.dir/src/compute.cpp.o
/home/ajay/vpns_ws/devel/lib/vpns/vpns: vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o
/home/ajay/vpns_ws/devel/lib/vpns/vpns: vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o
/home/ajay/vpns_ws/devel/lib/vpns/vpns: vps/CMakeFiles/vpns.dir/build.make
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/libroscpp.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/librosconsole.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/librostime.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/libcpp_common.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
/home/ajay/vpns_ws/devel/lib/vpns/vpns: vps/CMakeFiles/vpns.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ajay/vpns_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable /home/ajay/vpns_ws/devel/lib/vpns/vpns"
	cd /home/ajay/vpns_ws/build/vps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vpns.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vps/CMakeFiles/vpns.dir/build: /home/ajay/vpns_ws/devel/lib/vpns/vpns

.PHONY : vps/CMakeFiles/vpns.dir/build

vps/CMakeFiles/vpns.dir/requires: vps/CMakeFiles/vpns.dir/src/positioning.cpp.o.requires
vps/CMakeFiles/vpns.dir/requires: vps/CMakeFiles/vpns.dir/src/calibration.cpp.o.requires
vps/CMakeFiles/vpns.dir/requires: vps/CMakeFiles/vpns.dir/src/compute.cpp.o.requires
vps/CMakeFiles/vpns.dir/requires: vps/CMakeFiles/vpns.dir/src/aStarSearch.cpp.o.requires
vps/CMakeFiles/vpns.dir/requires: vps/CMakeFiles/vpns.dir/src/navigationCommands.cpp.o.requires

.PHONY : vps/CMakeFiles/vpns.dir/requires

vps/CMakeFiles/vpns.dir/clean:
	cd /home/ajay/vpns_ws/build/vps && $(CMAKE_COMMAND) -P CMakeFiles/vpns.dir/cmake_clean.cmake
.PHONY : vps/CMakeFiles/vpns.dir/clean

vps/CMakeFiles/vpns.dir/depend:
	cd /home/ajay/vpns_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ajay/vpns_ws/src /home/ajay/vpns_ws/src/vps /home/ajay/vpns_ws/build /home/ajay/vpns_ws/build/vps /home/ajay/vpns_ws/build/vps/CMakeFiles/vpns.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vps/CMakeFiles/vpns.dir/depend

