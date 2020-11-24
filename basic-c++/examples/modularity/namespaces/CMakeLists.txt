project( imageNamespace )

file( GLOB sources *.cpp )

include_directories(include)
add_executable( imageNamespace ${sources} )
