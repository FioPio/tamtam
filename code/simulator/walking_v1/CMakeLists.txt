cmake_minimum_required(VERSION 2.8)#Versió necessària
set(name walking_v1)#Crea la variable per evitar escriure-ho a tot arreu
project( ${name} )#Nom del projecte

find_package( OpenCV REQUIRED )											#Llibraries d'opencv necessàries
include_directories( ${OpenCV_INCLUDE_DIRS} ../lib/include)							
add_executable( ../bin/${name} src/main.cpp ../lib/src/tamtam_simulator.cpp ../lib/include/tamtam_simulator.h)
target_link_libraries( ../bin/${name} ${OpenCV_LIBS} )
