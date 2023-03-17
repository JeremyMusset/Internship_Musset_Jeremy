add_library(dot_X
  SHARED
  dot_product.cpp)

install (TARGETS dot_X
         DESTINATION lib3)
         
file(
  GLOB
  headers
  *.h)

add_executable(dot ${F_GEN} ${F_DOT} dot_product.cpp)

install(FILES ${headers}
  DESTINATION include/${CMAKE_PROJECT_NAME})

target_link_libraries(dot ${MPFR_LIBRARY})