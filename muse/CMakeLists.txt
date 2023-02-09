add_library(par_dot_product
  SHARED
  par_dot_product.cpp)

install (TARGETS par_dot_product
         DESTINATION lib6)
         
file(
  GLOB
  headers
  *.h)

add_executable(par_dot_prod ${F_GEN} ${F_DOT} par_dot_product.cpp)

install(FILES ${headers}
  DESTINATION include/${CMAKE_PROJECT_NAME})

target_link_libraries(par_dot_prod ${MPFR_LIBRARY})