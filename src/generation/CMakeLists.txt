add_library(gen_X
  SHARED
  generation.cpp)

install (TARGETS gen_X
         DESTINATION lib2)
         
file(
  GLOB
  headers
  *.hpp)


install(FILES ${headers}
  DESTINATION include/${CMAKE_PROJECT_NAME})

