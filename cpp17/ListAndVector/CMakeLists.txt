cmake_minimum_required(VERSION 3.1)
# Enable C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
project( ListAndVector )
find_package( OpenCV REQUIRED )
add_executable( ListAndVector ListAndVector.cpp )
add_custom_target(run)
add_custom_command( TARGET run
	POST_BUILD COMMAND ./ListAndVector)
