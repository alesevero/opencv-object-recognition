cmake_minimum_required(VERSION 2.8)
project( tcc_app )
find_package( OpenCV )

file(GLOB_RECURSE tcc_app_HEADERS "src/*.h")

set (tcc_app_INCLUDE_DIRS "")
foreach (_headerFile ${tcc_app_HEADERS})
    get_filename_component(_dir ${_headerFile} PATH)
    list (APPEND tcc_app_INCLUDE_DIRS ${_dir})
endforeach()
list(REMOVE_DUPLICATES tcc_app_INCLUDE_DIRS)

include_directories(${tcc_app_INCLUDE_DIRS})
include_directories( ${OpenCV_INCLUDE_DIRS})
add_executable (tcc_app tcc_app.cpp Object.cpp ColorTracker.cpp ObjectDetector.cpp)
target_link_libraries( tcc_app ${OpenCV_LIBS} )
