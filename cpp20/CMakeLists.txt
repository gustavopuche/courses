cmake_minimum_required(VERSION 3.10)

project( trial )

# Enable C++17
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

include(GNUInstallDirs)

enable_testing()

File( GLOB sources *.cpp )

add_executable( trial ${sources} )

add_custom_target(run)
add_custom_command( TARGET run
	POST_BUILD COMMAND ./trial 43 Gustavo)
