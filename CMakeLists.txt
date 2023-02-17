cmake_minimum_required( VERSION 3.2 )
set(CMAKE_BUILD_TYPE Release)
project (Internship_Musset_Jeremy 
         LANGUAGES C CXX)


include_directories(include)

file(GLOB_RECURSE F_GEN src/generation/*.cc)
file(GLOB_RECURSE DATA_TXT src/data/*.txt)
file(GLOB_RECURSE DATA_BIN src/data/*.bin)
file(GLOB_RECURSE F_DOT src/dot_product/*.cc)

add_subdirectory(src)
add_subdirectory(Test)
add_subdirectory(main)



















# Set MPFR_INCLUDE_DIR

find_path(MPFR_INCLUDE_DIR NAMES mpfr.h PATHS $ENV{GMPDIR} ${INCLUDE_INSTALL_DIR})

# Set MPFR_FIND_VERSION to 1.0.0 if no minimum version is specified

if(NOT MPFR_FIND_VERSION)
    if(NOT MPFR_FIND_VERSION_MAJOR)
        set(MPFR_FIND_VERSION_MAJOR 1)
    endif(NOT MPFR_FIND_VERSION_MAJOR)
    if(NOT MPFR_FIND_VERSION_MINOR)
        set(MPFR_FIND_VERSION_MINOR 0)
    endif(NOT MPFR_FIND_VERSION_MINOR)
    if(NOT MPFR_FIND_VERSION_PATCH)
        set(MPFR_FIND_VERSION_PATCH 0)
    endif(NOT MPFR_FIND_VERSION_PATCH)

    set(MPFR_FIND_VERSION "${MPFR_FIND_VERSION_MAJOR}.${MPFR_FIND_VERSION_MINOR}.${MPFR_FIND_VERSION_PATCH}")
endif(NOT MPFR_FIND_VERSION)


if(MPFR_INCLUDE_DIR)

    # Set MPFR_VERSION

    file(READ "${MPFR_INCLUDE_DIR}/mpfr.h" _mpfr_version_header)

    string(REGEX MATCH "define[ \t]+MPFR_VERSION_MAJOR[ \t]+([0-9]+)" _mpfr_major_version_match "${_mpfr_version_header}")
    set(MPFR_MAJOR_VERSION "${CMAKE_MATCH_1}")
    string(REGEX MATCH "define[ \t]+MPFR_VERSION_MINOR[ \t]+([0-9]+)" _mpfr_minor_version_match "${_mpfr_version_header}")
    set(MPFR_MINOR_VERSION "${CMAKE_MATCH_1}")
    string(REGEX MATCH "define[ \t]+MPFR_VERSION_PATCHLEVEL[ \t]+([0-9]+)" _mpfr_patchlevel_version_match "${_mpfr_version_header}")
    set(MPFR_PATCHLEVEL_VERSION "${CMAKE_MATCH_1}")

    set(MPFR_VERSION ${MPFR_MAJOR_VERSION}.${MPFR_MINOR_VERSION}.${MPFR_PATCHLEVEL_VERSION})

    # Check whether found version exceeds minimum version

    if(${MPFR_VERSION} VERSION_LESS ${MPFR_FIND_VERSION})
        set(MPFR_VERSION_OK FALSE)
        message(STATUS "MPFR version ${MPFR_VERSION} found in ${MPFR_INCLUDE_DIR}, "
            "but at least version ${MPFR_FIND_VERSION} is required")
    else(${MPFR_VERSION} VERSION_LESS ${MPFR_FIND_VERSION})
        set(MPFR_VERSION_OK TRUE)
    endif(${MPFR_VERSION} VERSION_LESS ${MPFR_FIND_VERSION})

endif()

# Set MPFR_LIBRARY

find_library(MPFR_LIBRARY mpfr PATHS $ENV{GMPDIR} ${LIB_INSTALL_DIR})

# Epilogue

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(MPFR DEFAULT_MSG
    MPFR_INCLUDE_DIR MPFR_LIBRARY MPFR_VERSION_OK)
mark_as_advanced(MPFR_INCLUDE_DIR MPFR_LIBRARY)

set(MPFR_INCLUDE_DIRS "${MPFR_INCLUDE_DIR}")
set(MPFR_LIBRARIES "${MPFR_LIBRARY}")
