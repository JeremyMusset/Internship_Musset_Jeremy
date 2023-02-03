add_library(dot
  SHARED
  dot_product.cpp)

install (TARGETS dot
         DESTINATION lib3)
         
file(
  GLOB
  headers
  *.h)



add_compile_options(-lmpfr)
add_executable(dot_prod ${F_GEN} common.cc twoprod.cc correct_rounding.cc dot_product.cpp)

install(FILES ${headers}
  DESTINATION include/${CMAKE_PROJECT_NAME})
