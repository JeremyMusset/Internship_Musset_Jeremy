add_library(dot
  SHARED
  dot_product.cpp)

install (TARGETS dot
         DESTINATION lib3)
         
file(
  GLOB
  headers
  *.h)

find_package(CGAL REQUIRED)
find_package(MPFR REQUIRED)

add_executable(dot_prod ${F_GEN} common.cc twoprod.cc correct_rounding.cc dot_product.cpp)




install(FILES ${headers}
  DESTINATION include/${CMAKE_PROJECT_NAME})
