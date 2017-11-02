cmake_minimum_required(VERSION 2.8)
set(Boost_INCLUDE_DIR "C:/Libraries/boost_1_59_0")
set(Boost_LIBRARY_DIR "C:/Libraries/boost_1_59_0/lib32-msvc-14.0")
find_package(Boost COMPONENTS system filesystem REQUIRED)
include_directories(${Boost_INCLUDE_DIR})
link_directories(${Boost_LIBRARY_DIR})

add_executable(main.exe main.cpp)
target_link_libraries(main.exe ${Boost_LIBRARIES})
