cmake_minimum_required( VERSION 3.2 )
set(CMAKE_BUILD_TYPE Release)
project (Internship_Musset_Jeremy 
         LANGUAGES C CXX)


include_directories(include)

#Les fichiers c dans src/rounding_error seront dans ROUND_ERR appel avec $(ROUND_ERR)
file(GLOB_RECURSE F_GEN src/generation/*.cc)
# set(F_GEN src/generation/*.cc)


add_subdirectory(src)
add_subdirectory(Examples)