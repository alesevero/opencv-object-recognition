# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app

# Include any dependencies generated for this target.
include CMakeFiles/tcc_app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tcc_app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcc_app.dir/flags.make

CMakeFiles/tcc_app.dir/tcc_app.cpp.o: CMakeFiles/tcc_app.dir/flags.make
CMakeFiles/tcc_app.dir/tcc_app.cpp.o: tcc_app.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tcc_app.dir/tcc_app.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tcc_app.dir/tcc_app.cpp.o -c /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/tcc_app.cpp

CMakeFiles/tcc_app.dir/tcc_app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcc_app.dir/tcc_app.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/tcc_app.cpp > CMakeFiles/tcc_app.dir/tcc_app.cpp.i

CMakeFiles/tcc_app.dir/tcc_app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcc_app.dir/tcc_app.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/tcc_app.cpp -o CMakeFiles/tcc_app.dir/tcc_app.cpp.s

CMakeFiles/tcc_app.dir/tcc_app.cpp.o.requires:

.PHONY : CMakeFiles/tcc_app.dir/tcc_app.cpp.o.requires

CMakeFiles/tcc_app.dir/tcc_app.cpp.o.provides: CMakeFiles/tcc_app.dir/tcc_app.cpp.o.requires
	$(MAKE) -f CMakeFiles/tcc_app.dir/build.make CMakeFiles/tcc_app.dir/tcc_app.cpp.o.provides.build
.PHONY : CMakeFiles/tcc_app.dir/tcc_app.cpp.o.provides

CMakeFiles/tcc_app.dir/tcc_app.cpp.o.provides.build: CMakeFiles/tcc_app.dir/tcc_app.cpp.o


CMakeFiles/tcc_app.dir/Object.cpp.o: CMakeFiles/tcc_app.dir/flags.make
CMakeFiles/tcc_app.dir/Object.cpp.o: Object.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tcc_app.dir/Object.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tcc_app.dir/Object.cpp.o -c /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/Object.cpp

CMakeFiles/tcc_app.dir/Object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcc_app.dir/Object.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/Object.cpp > CMakeFiles/tcc_app.dir/Object.cpp.i

CMakeFiles/tcc_app.dir/Object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcc_app.dir/Object.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/Object.cpp -o CMakeFiles/tcc_app.dir/Object.cpp.s

CMakeFiles/tcc_app.dir/Object.cpp.o.requires:

.PHONY : CMakeFiles/tcc_app.dir/Object.cpp.o.requires

CMakeFiles/tcc_app.dir/Object.cpp.o.provides: CMakeFiles/tcc_app.dir/Object.cpp.o.requires
	$(MAKE) -f CMakeFiles/tcc_app.dir/build.make CMakeFiles/tcc_app.dir/Object.cpp.o.provides.build
.PHONY : CMakeFiles/tcc_app.dir/Object.cpp.o.provides

CMakeFiles/tcc_app.dir/Object.cpp.o.provides.build: CMakeFiles/tcc_app.dir/Object.cpp.o


CMakeFiles/tcc_app.dir/ColorTracker.cpp.o: CMakeFiles/tcc_app.dir/flags.make
CMakeFiles/tcc_app.dir/ColorTracker.cpp.o: ColorTracker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tcc_app.dir/ColorTracker.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tcc_app.dir/ColorTracker.cpp.o -c /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/ColorTracker.cpp

CMakeFiles/tcc_app.dir/ColorTracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcc_app.dir/ColorTracker.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/ColorTracker.cpp > CMakeFiles/tcc_app.dir/ColorTracker.cpp.i

CMakeFiles/tcc_app.dir/ColorTracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcc_app.dir/ColorTracker.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/ColorTracker.cpp -o CMakeFiles/tcc_app.dir/ColorTracker.cpp.s

CMakeFiles/tcc_app.dir/ColorTracker.cpp.o.requires:

.PHONY : CMakeFiles/tcc_app.dir/ColorTracker.cpp.o.requires

CMakeFiles/tcc_app.dir/ColorTracker.cpp.o.provides: CMakeFiles/tcc_app.dir/ColorTracker.cpp.o.requires
	$(MAKE) -f CMakeFiles/tcc_app.dir/build.make CMakeFiles/tcc_app.dir/ColorTracker.cpp.o.provides.build
.PHONY : CMakeFiles/tcc_app.dir/ColorTracker.cpp.o.provides

CMakeFiles/tcc_app.dir/ColorTracker.cpp.o.provides.build: CMakeFiles/tcc_app.dir/ColorTracker.cpp.o


CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o: CMakeFiles/tcc_app.dir/flags.make
CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o: ObjectDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o -c /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/ObjectDetector.cpp

CMakeFiles/tcc_app.dir/ObjectDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcc_app.dir/ObjectDetector.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/ObjectDetector.cpp > CMakeFiles/tcc_app.dir/ObjectDetector.cpp.i

CMakeFiles/tcc_app.dir/ObjectDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcc_app.dir/ObjectDetector.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/ObjectDetector.cpp -o CMakeFiles/tcc_app.dir/ObjectDetector.cpp.s

CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o.requires:

.PHONY : CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o.requires

CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o.provides: CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o.requires
	$(MAKE) -f CMakeFiles/tcc_app.dir/build.make CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o.provides.build
.PHONY : CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o.provides

CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o.provides.build: CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o


# Object files for target tcc_app
tcc_app_OBJECTS = \
"CMakeFiles/tcc_app.dir/tcc_app.cpp.o" \
"CMakeFiles/tcc_app.dir/Object.cpp.o" \
"CMakeFiles/tcc_app.dir/ColorTracker.cpp.o" \
"CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o"

# External object files for target tcc_app
tcc_app_EXTERNAL_OBJECTS =

tcc_app: CMakeFiles/tcc_app.dir/tcc_app.cpp.o
tcc_app: CMakeFiles/tcc_app.dir/Object.cpp.o
tcc_app: CMakeFiles/tcc_app.dir/ColorTracker.cpp.o
tcc_app: CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o
tcc_app: CMakeFiles/tcc_app.dir/build.make
tcc_app: /usr/local/lib/libopencv_videostab.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_superres.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_stitching.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_shape.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_photo.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_objdetect.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_hal.a
tcc_app: /usr/local/lib/libopencv_calib3d.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_features2d.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_ml.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_highgui.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_videoio.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_imgcodecs.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_flann.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_video.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_imgproc.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_core.3.0.0.dylib
tcc_app: /usr/local/lib/libopencv_hal.a
tcc_app: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
tcc_app: CMakeFiles/tcc_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable tcc_app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcc_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcc_app.dir/build: tcc_app

.PHONY : CMakeFiles/tcc_app.dir/build

CMakeFiles/tcc_app.dir/requires: CMakeFiles/tcc_app.dir/tcc_app.cpp.o.requires
CMakeFiles/tcc_app.dir/requires: CMakeFiles/tcc_app.dir/Object.cpp.o.requires
CMakeFiles/tcc_app.dir/requires: CMakeFiles/tcc_app.dir/ColorTracker.cpp.o.requires
CMakeFiles/tcc_app.dir/requires: CMakeFiles/tcc_app.dir/ObjectDetector.cpp.o.requires

.PHONY : CMakeFiles/tcc_app.dir/requires

CMakeFiles/tcc_app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcc_app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcc_app.dir/clean

CMakeFiles/tcc_app.dir/depend:
	cd /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app /Users/alexandresjr/Documents/PUCRS/TCC/tcc_app/CMakeFiles/tcc_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tcc_app.dir/depend
