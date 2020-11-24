project( abstractAndIneritance )

file( GLOB sources *.cpp )

include_directories(include)
add_executable( abstractAndIneritance ${sources} )
