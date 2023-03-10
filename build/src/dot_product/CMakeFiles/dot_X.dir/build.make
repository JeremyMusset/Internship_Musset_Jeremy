# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build

# Include any dependencies generated for this target.
include src/dot_product/CMakeFiles/dot_X.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/dot_product/CMakeFiles/dot_X.dir/compiler_depend.make

# Include the progress variables for this target.
include src/dot_product/CMakeFiles/dot_X.dir/progress.make

# Include the compile flags for this target's objects.
include src/dot_product/CMakeFiles/dot_X.dir/flags.make

src/dot_product/CMakeFiles/dot_X.dir/dot_product.cpp.o: src/dot_product/CMakeFiles/dot_X.dir/flags.make
src/dot_product/CMakeFiles/dot_X.dir/dot_product.cpp.o: ../src/dot_product/dot_product.cpp
src/dot_product/CMakeFiles/dot_X.dir/dot_product.cpp.o: src/dot_product/CMakeFiles/dot_X.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/dot_product/CMakeFiles/dot_X.dir/dot_product.cpp.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/dot_product && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/dot_product/CMakeFiles/dot_X.dir/dot_product.cpp.o -MF CMakeFiles/dot_X.dir/dot_product.cpp.o.d -o CMakeFiles/dot_X.dir/dot_product.cpp.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/dot_product.cpp

src/dot_product/CMakeFiles/dot_X.dir/dot_product.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dot_X.dir/dot_product.cpp.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/dot_product && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/dot_product.cpp > CMakeFiles/dot_X.dir/dot_product.cpp.i

src/dot_product/CMakeFiles/dot_X.dir/dot_product.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dot_X.dir/dot_product.cpp.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/dot_product && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/dot_product.cpp -o CMakeFiles/dot_X.dir/dot_product.cpp.s

# Object files for target dot_X
dot_X_OBJECTS = \
"CMakeFiles/dot_X.dir/dot_product.cpp.o"

# External object files for target dot_X
dot_X_EXTERNAL_OBJECTS =

src/dot_product/libdot_X.so: src/dot_product/CMakeFiles/dot_X.dir/dot_product.cpp.o
src/dot_product/libdot_X.so: src/dot_product/CMakeFiles/dot_X.dir/build.make
src/dot_product/libdot_X.so: src/dot_product/CMakeFiles/dot_X.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libdot_X.so"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/dot_product && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dot_X.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/dot_product/CMakeFiles/dot_X.dir/build: src/dot_product/libdot_X.so
.PHONY : src/dot_product/CMakeFiles/dot_X.dir/build

src/dot_product/CMakeFiles/dot_X.dir/clean:
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/dot_product && $(CMAKE_COMMAND) -P CMakeFiles/dot_X.dir/cmake_clean.cmake
.PHONY : src/dot_product/CMakeFiles/dot_X.dir/clean

src/dot_product/CMakeFiles/dot_X.dir/depend:
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/dot_product /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/dot_product/CMakeFiles/dot_X.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/dot_product/CMakeFiles/dot_X.dir/depend

