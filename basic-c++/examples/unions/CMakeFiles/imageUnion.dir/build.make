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

# Include any dependencies generated for this target.
include unions/CMakeFiles/imageUnion.dir/depend.make

# Include the progress variables for this target.
include unions/CMakeFiles/imageUnion.dir/progress.make

# Include the compile flags for this target's objects.
include unions/CMakeFiles/imageUnion.dir/flags.make

unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o: unions/CMakeFiles/imageUnion.dir/flags.make
unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o: unions/imageUnion.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gustavo/Documents/Work/courses/basic-c++/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o"
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples/unions && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imageUnion.dir/imageUnion.cpp.o -c /home/gustavo/Documents/Work/courses/basic-c++/examples/unions/imageUnion.cpp

unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imageUnion.dir/imageUnion.cpp.i"
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples/unions && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gustavo/Documents/Work/courses/basic-c++/examples/unions/imageUnion.cpp > CMakeFiles/imageUnion.dir/imageUnion.cpp.i

unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imageUnion.dir/imageUnion.cpp.s"
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples/unions && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gustavo/Documents/Work/courses/basic-c++/examples/unions/imageUnion.cpp -o CMakeFiles/imageUnion.dir/imageUnion.cpp.s

unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o.requires:

.PHONY : unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o.requires

unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o.provides: unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o.requires
	$(MAKE) -f unions/CMakeFiles/imageUnion.dir/build.make unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o.provides.build
.PHONY : unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o.provides

unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o.provides.build: unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o


# Object files for target imageUnion
imageUnion_OBJECTS = \
"CMakeFiles/imageUnion.dir/imageUnion.cpp.o"

# External object files for target imageUnion
imageUnion_EXTERNAL_OBJECTS =

unions/imageUnion: unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o
unions/imageUnion: unions/CMakeFiles/imageUnion.dir/build.make
unions/imageUnion: unions/CMakeFiles/imageUnion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gustavo/Documents/Work/courses/basic-c++/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable imageUnion"
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples/unions && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imageUnion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unions/CMakeFiles/imageUnion.dir/build: unions/imageUnion

.PHONY : unions/CMakeFiles/imageUnion.dir/build

unions/CMakeFiles/imageUnion.dir/requires: unions/CMakeFiles/imageUnion.dir/imageUnion.cpp.o.requires

.PHONY : unions/CMakeFiles/imageUnion.dir/requires

unions/CMakeFiles/imageUnion.dir/clean:
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples/unions && $(CMAKE_COMMAND) -P CMakeFiles/imageUnion.dir/cmake_clean.cmake
.PHONY : unions/CMakeFiles/imageUnion.dir/clean

unions/CMakeFiles/imageUnion.dir/depend:
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples/unions /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples/unions /home/gustavo/Documents/Work/courses/basic-c++/examples/unions/CMakeFiles/imageUnion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unions/CMakeFiles/imageUnion.dir/depend

