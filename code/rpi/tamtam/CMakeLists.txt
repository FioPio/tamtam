cmake_minimum_required(VERSION 2.8)#Versió necessària
set(name tamtam_control)#Crea la variable per evitar escriure-ho a tot arreu
project( ${name} )#Nom del projecte
find_library(wiringPi_LIB wiringPi)
include_directories( include )
add_executable(../bin/${name} src/main.cpp src/tamtam.cpp include/tamtam.h)
target_link_libraries( ../bin/${name} ${wiringPi_LIB})
