cmake_minimum_required( VERSION 3.2 )
set(CMAKE_BUILD_TYPE Release)
project (Internship_Musset_Jeremy 
         LANGUAGES C CXX)


include_directories(include)

list(APPEND CMAKE_MODULE_PATH "/usr/lib/x86_64-linux-gnu/")

find_package(MPFR REQUIRED)
message(STATUS "MPFR Found: ${MPFR_FOUND}")
target_link_libraries(Internship_Musset_Jeremy ${MPFR_LIBRARIES})



#Les fichiers c dans src/rounding_error seront dans ROUND_ERR appel avec $(ROUND_ERR)
file(GLOB_RECURSE F_GEN src/generation/*.cc)
# set(F_GEN src/generation/*.cc)
file(GLOB_RECURSE DATA_TXT src/data/*.txt)
file(GLOB_RECURSE DATA_BIN src/data/*.bin)

add_subdirectory(src)
add_subdirectory(Examples)