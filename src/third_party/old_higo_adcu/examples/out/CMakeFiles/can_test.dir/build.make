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
CMAKE_SOURCE_DIR = /usr/local/adcusdk/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /usr/local/adcusdk/examples/out

# Include any dependencies generated for this target.
include CMakeFiles/can_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/can_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/can_test.dir/flags.make

CMakeFiles/can_test.dir/can_test.cpp.o: CMakeFiles/can_test.dir/flags.make
CMakeFiles/can_test.dir/can_test.cpp.o: ../can_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/adcusdk/examples/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/can_test.dir/can_test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/can_test.dir/can_test.cpp.o -c /usr/local/adcusdk/examples/can_test.cpp

CMakeFiles/can_test.dir/can_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/can_test.dir/can_test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/local/adcusdk/examples/can_test.cpp > CMakeFiles/can_test.dir/can_test.cpp.i

CMakeFiles/can_test.dir/can_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/can_test.dir/can_test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/local/adcusdk/examples/can_test.cpp -o CMakeFiles/can_test.dir/can_test.cpp.s

CMakeFiles/can_test.dir/can_test.cpp.o.requires:

.PHONY : CMakeFiles/can_test.dir/can_test.cpp.o.requires

CMakeFiles/can_test.dir/can_test.cpp.o.provides: CMakeFiles/can_test.dir/can_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/can_test.dir/build.make CMakeFiles/can_test.dir/can_test.cpp.o.provides.build
.PHONY : CMakeFiles/can_test.dir/can_test.cpp.o.provides

CMakeFiles/can_test.dir/can_test.cpp.o.provides.build: CMakeFiles/can_test.dir/can_test.cpp.o


# Object files for target can_test
can_test_OBJECTS = \
"CMakeFiles/can_test.dir/can_test.cpp.o"

# External object files for target can_test
can_test_EXTERNAL_OBJECTS =

can_test: CMakeFiles/can_test.dir/can_test.cpp.o
can_test: CMakeFiles/can_test.dir/build.make
can_test: CMakeFiles/can_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/local/adcusdk/examples/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable can_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/can_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/can_test.dir/build: can_test

.PHONY : CMakeFiles/can_test.dir/build

CMakeFiles/can_test.dir/requires: CMakeFiles/can_test.dir/can_test.cpp.o.requires

.PHONY : CMakeFiles/can_test.dir/requires

CMakeFiles/can_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/can_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/can_test.dir/clean

CMakeFiles/can_test.dir/depend:
	cd /usr/local/adcusdk/examples/out && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/adcusdk/examples /usr/local/adcusdk/examples /usr/local/adcusdk/examples/out /usr/local/adcusdk/examples/out /usr/local/adcusdk/examples/out/CMakeFiles/can_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/can_test.dir/depend

