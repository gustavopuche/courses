# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/gustavo/Documents/Work/courses/basic-c++/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gustavo/Documents/Work/courses/basic-c++/examples

# Utility rule file for runIu.

# Include the progress variables for this target.
include CMakeFiles/runIu.dir/progress.make

runIu: CMakeFiles/runIu.dir/build.make
	./unions/imageUnion
.PHONY : runIu

# Rule to build all files generated by this target.
CMakeFiles/runIu.dir/build: runIu

.PHONY : CMakeFiles/runIu.dir/build

CMakeFiles/runIu.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/runIu.dir/cmake_clean.cmake
.PHONY : CMakeFiles/runIu.dir/clean

CMakeFiles/runIu.dir/depend:
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples/CMakeFiles/runIu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/runIu.dir/depend

