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
CMAKE_SOURCE_DIR = /home/gustavo/dev/cpp17/ListAndVector

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gustavo/dev/cpp17/ListAndVector

# Include any dependencies generated for this target.
include CMakeFiles/ListAndVector.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ListAndVector.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ListAndVector.dir/flags.make

CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o: CMakeFiles/ListAndVector.dir/flags.make
CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o: ListAndVector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gustavo/dev/cpp17/ListAndVector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o -c /home/gustavo/dev/cpp17/ListAndVector/ListAndVector.cpp

CMakeFiles/ListAndVector.dir/ListAndVector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ListAndVector.dir/ListAndVector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gustavo/dev/cpp17/ListAndVector/ListAndVector.cpp > CMakeFiles/ListAndVector.dir/ListAndVector.cpp.i

CMakeFiles/ListAndVector.dir/ListAndVector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ListAndVector.dir/ListAndVector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gustavo/dev/cpp17/ListAndVector/ListAndVector.cpp -o CMakeFiles/ListAndVector.dir/ListAndVector.cpp.s

CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o.requires:

.PHONY : CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o.requires

CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o.provides: CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o.requires
	$(MAKE) -f CMakeFiles/ListAndVector.dir/build.make CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o.provides.build
.PHONY : CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o.provides

CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o.provides.build: CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o


# Object files for target ListAndVector
ListAndVector_OBJECTS = \
"CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o"

# External object files for target ListAndVector
ListAndVector_EXTERNAL_OBJECTS =

ListAndVector: CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o
ListAndVector: CMakeFiles/ListAndVector.dir/build.make
ListAndVector: CMakeFiles/ListAndVector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gustavo/dev/cpp17/ListAndVector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ListAndVector"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ListAndVector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ListAndVector.dir/build: ListAndVector

.PHONY : CMakeFiles/ListAndVector.dir/build

CMakeFiles/ListAndVector.dir/requires: CMakeFiles/ListAndVector.dir/ListAndVector.cpp.o.requires

.PHONY : CMakeFiles/ListAndVector.dir/requires

CMakeFiles/ListAndVector.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ListAndVector.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ListAndVector.dir/clean

CMakeFiles/ListAndVector.dir/depend:
	cd /home/gustavo/dev/cpp17/ListAndVector && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gustavo/dev/cpp17/ListAndVector /home/gustavo/dev/cpp17/ListAndVector /home/gustavo/dev/cpp17/ListAndVector /home/gustavo/dev/cpp17/ListAndVector /home/gustavo/dev/cpp17/ListAndVector/CMakeFiles/ListAndVector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ListAndVector.dir/depend

