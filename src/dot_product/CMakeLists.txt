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

add_executable(dot_prod ${F_GEN} ${F_DOT} dot_product.cpp)
# common.cc Rare_Blas.cc twoprod.cc correct_rounding.cc



install(FILES ${headers}
  DESTINATION include/${CMAKE_PROJECT_NAME})
