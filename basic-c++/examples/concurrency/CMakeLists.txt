cmake_minimum_required(VERSION 3.18)

project( imageConcurrency )

# Enable C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
find_package(Threads REQUIRED)

file( GLOB sources *.cpp )

add_executable( imageConcurrency ${sources} )

target_link_libraries( imageConcurrency Threads::Threads)

add_custom_target(run)
add_custom_command( TARGET run
	POST_BUILD COMMAND ./imageConcurrency)
