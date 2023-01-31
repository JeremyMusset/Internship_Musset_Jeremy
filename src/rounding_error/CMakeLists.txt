add_library(librairy
  SHARED
  rounding_error.cpp)

add_library(librairy2
  SHARED
  rounding_error.c)

install (TARGETS librairy
         DESTINATION lib)

install (TARGETS librairy2
         DESTINATION lib)

file(
  GLOB
  headers
  *.hpp)


add_executable(rounding_error_cpp rounding_error.cpp)

#add_executable(rounding_error_py rounding_error.py)

add_executable(rounding_error_c rounding_error.c)
target_compile_options(rounding_error_c PUBLIC -lm)


install(FILES ${headers}
  DESTINATION include/${CMAKE_PROJECT_NAME})

