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

# Utility rule file for runIacI.

# Include the progress variables for this target.
include CMakeFiles/runIacI.dir/progress.make

runIacI: CMakeFiles/runIacI.dir/build.make
	./classes/abstractClassesAndIneritance/abstractAndIneritance
.PHONY : runIacI

# Rule to build all files generated by this target.
CMakeFiles/runIacI.dir/build: runIacI

.PHONY : CMakeFiles/runIacI.dir/build

CMakeFiles/runIacI.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/runIacI.dir/cmake_clean.cmake
.PHONY : CMakeFiles/runIacI.dir/clean

CMakeFiles/runIacI.dir/depend:
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples/CMakeFiles/runIacI.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/runIacI.dir/depend

