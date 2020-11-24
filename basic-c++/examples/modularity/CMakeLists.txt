project( imageClass )

file( GLOB sources *.cpp )

include_directories(include)
add_executable( imageModule ${sources} )
