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
include classes/CMakeFiles/imageClass.dir/depend.make

# Include the progress variables for this target.
include classes/CMakeFiles/imageClass.dir/progress.make

# Include the compile flags for this target's objects.
include classes/CMakeFiles/imageClass.dir/flags.make

classes/CMakeFiles/imageClass.dir/imageClass.cpp.o: classes/CMakeFiles/imageClass.dir/flags.make
classes/CMakeFiles/imageClass.dir/imageClass.cpp.o: classes/imageClass.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gustavo/Documents/Work/courses/basic-c++/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object classes/CMakeFiles/imageClass.dir/imageClass.cpp.o"
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples/classes && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imageClass.dir/imageClass.cpp.o -c /home/gustavo/Documents/Work/courses/basic-c++/examples/classes/imageClass.cpp

classes/CMakeFiles/imageClass.dir/imageClass.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imageClass.dir/imageClass.cpp.i"
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples/classes && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gustavo/Documents/Work/courses/basic-c++/examples/classes/imageClass.cpp > CMakeFiles/imageClass.dir/imageClass.cpp.i

classes/CMakeFiles/imageClass.dir/imageClass.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imageClass.dir/imageClass.cpp.s"
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples/classes && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gustavo/Documents/Work/courses/basic-c++/examples/classes/imageClass.cpp -o CMakeFiles/imageClass.dir/imageClass.cpp.s

classes/CMakeFiles/imageClass.dir/imageClass.cpp.o.requires:

.PHONY : classes/CMakeFiles/imageClass.dir/imageClass.cpp.o.requires

classes/CMakeFiles/imageClass.dir/imageClass.cpp.o.provides: classes/CMakeFiles/imageClass.dir/imageClass.cpp.o.requires
	$(MAKE) -f classes/CMakeFiles/imageClass.dir/build.make classes/CMakeFiles/imageClass.dir/imageClass.cpp.o.provides.build
.PHONY : classes/CMakeFiles/imageClass.dir/imageClass.cpp.o.provides

classes/CMakeFiles/imageClass.dir/imageClass.cpp.o.provides.build: classes/CMakeFiles/imageClass.dir/imageClass.cpp.o


# Object files for target imageClass
imageClass_OBJECTS = \
"CMakeFiles/imageClass.dir/imageClass.cpp.o"

# External object files for target imageClass
imageClass_EXTERNAL_OBJECTS =

classes/imageClass: classes/CMakeFiles/imageClass.dir/imageClass.cpp.o
classes/imageClass: classes/CMakeFiles/imageClass.dir/build.make
classes/imageClass: classes/CMakeFiles/imageClass.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gustavo/Documents/Work/courses/basic-c++/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable imageClass"
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples/classes && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imageClass.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
classes/CMakeFiles/imageClass.dir/build: classes/imageClass

.PHONY : classes/CMakeFiles/imageClass.dir/build

classes/CMakeFiles/imageClass.dir/requires: classes/CMakeFiles/imageClass.dir/imageClass.cpp.o.requires

.PHONY : classes/CMakeFiles/imageClass.dir/requires

classes/CMakeFiles/imageClass.dir/clean:
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples/classes && $(CMAKE_COMMAND) -P CMakeFiles/imageClass.dir/cmake_clean.cmake
.PHONY : classes/CMakeFiles/imageClass.dir/clean

classes/CMakeFiles/imageClass.dir/depend:
	cd /home/gustavo/Documents/Work/courses/basic-c++/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples/classes /home/gustavo/Documents/Work/courses/basic-c++/examples /home/gustavo/Documents/Work/courses/basic-c++/examples/classes /home/gustavo/Documents/Work/courses/basic-c++/examples/classes/CMakeFiles/imageClass.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : classes/CMakeFiles/imageClass.dir/depend

