add_library(gen
  SHARED
  vec.cpp)

install (TARGETS gen
         DESTINATION lib2)
         
file(
  GLOB
  headers
  *.hpp)


add_executable(gen_vec gen_vector.cc gen_random_number.cc vec.cpp)

install(FILES ${headers}
  DESTINATION include/${CMAKE_PROJECT_NAME})

