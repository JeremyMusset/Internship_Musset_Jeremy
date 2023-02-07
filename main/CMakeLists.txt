add_library(dot_product
  SHARED
  dot_product.cpp)

install (TARGETS dot_product
         DESTINATION lib5)
         
file(
  GLOB
  headers
  *.h)

add_executable(dot_prod ${F_GEN} ${F_DOT} dot_product.cpp)

install(FILES ${headers}
  DESTINATION include/${CMAKE_PROJECT_NAME})

target_link_libraries(dot_prod ${MPFR_LIBRARY})