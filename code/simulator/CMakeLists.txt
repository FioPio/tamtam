cmake_minimum_required(VERSION 2.8)										#Versió necessària
set(name simulator)														#Crea la variable per evitar escriure-ho a tot arreu
project( ${name} )														#Nom del projecte
find_package( OpenCV REQUIRED )											#Llibraries d'opencv necessàries
include_directories( ${OpenCV_INCLUDE_DIRS} )							
add_executable( ../bin/${name} src/${name}.cpp)
target_link_libraries( ../bin/${name} ${OpenCV_LIBS} )
