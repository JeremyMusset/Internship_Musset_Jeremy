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
include src/generation/CMakeFiles/gen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/generation/CMakeFiles/gen.dir/compiler_depend.make

# Include the progress variables for this target.
include src/generation/CMakeFiles/gen.dir/progress.make

# Include the compile flags for this target's objects.
include src/generation/CMakeFiles/gen.dir/flags.make

src/generation/CMakeFiles/gen.dir/vec.cpp.o: src/generation/CMakeFiles/gen.dir/flags.make
src/generation/CMakeFiles/gen.dir/vec.cpp.o: ../src/generation/vec.cpp
src/generation/CMakeFiles/gen.dir/vec.cpp.o: src/generation/CMakeFiles/gen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/generation/CMakeFiles/gen.dir/vec.cpp.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/generation/CMakeFiles/gen.dir/vec.cpp.o -MF CMakeFiles/gen.dir/vec.cpp.o.d -o CMakeFiles/gen.dir/vec.cpp.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/vec.cpp

src/generation/CMakeFiles/gen.dir/vec.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gen.dir/vec.cpp.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/vec.cpp > CMakeFiles/gen.dir/vec.cpp.i

src/generation/CMakeFiles/gen.dir/vec.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gen.dir/vec.cpp.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/vec.cpp -o CMakeFiles/gen.dir/vec.cpp.s

# Object files for target gen
gen_OBJECTS = \
"CMakeFiles/gen.dir/vec.cpp.o"

# External object files for target gen
gen_EXTERNAL_OBJECTS =

src/generation/libgen.so: src/generation/CMakeFiles/gen.dir/vec.cpp.o
src/generation/libgen.so: src/generation/CMakeFiles/gen.dir/build.make
src/generation/libgen.so: src/generation/CMakeFiles/gen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libgen.so"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/generation/CMakeFiles/gen.dir/build: src/generation/libgen.so
.PHONY : src/generation/CMakeFiles/gen.dir/build

src/generation/CMakeFiles/gen.dir/clean:
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && $(CMAKE_COMMAND) -P CMakeFiles/gen.dir/cmake_clean.cmake
.PHONY : src/generation/CMakeFiles/gen.dir/clean

src/generation/CMakeFiles/gen.dir/depend:
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation/CMakeFiles/gen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/generation/CMakeFiles/gen.dir/depend

