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
include src/generation/CMakeFiles/gen_vec.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/generation/CMakeFiles/gen_vec.dir/compiler_depend.make

# Include the progress variables for this target.
include src/generation/CMakeFiles/gen_vec.dir/progress.make

# Include the compile flags for this target's objects.
include src/generation/CMakeFiles/gen_vec.dir/flags.make

src/generation/CMakeFiles/gen_vec.dir/gen_vector.cc.o: src/generation/CMakeFiles/gen_vec.dir/flags.make
src/generation/CMakeFiles/gen_vec.dir/gen_vector.cc.o: ../src/generation/gen_vector.cc
src/generation/CMakeFiles/gen_vec.dir/gen_vector.cc.o: src/generation/CMakeFiles/gen_vec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/generation/CMakeFiles/gen_vec.dir/gen_vector.cc.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/generation/CMakeFiles/gen_vec.dir/gen_vector.cc.o -MF CMakeFiles/gen_vec.dir/gen_vector.cc.o.d -o CMakeFiles/gen_vec.dir/gen_vector.cc.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/gen_vector.cc

src/generation/CMakeFiles/gen_vec.dir/gen_vector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gen_vec.dir/gen_vector.cc.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/gen_vector.cc > CMakeFiles/gen_vec.dir/gen_vector.cc.i

src/generation/CMakeFiles/gen_vec.dir/gen_vector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gen_vec.dir/gen_vector.cc.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/gen_vector.cc -o CMakeFiles/gen_vec.dir/gen_vector.cc.s

src/generation/CMakeFiles/gen_vec.dir/gen_random_number.cc.o: src/generation/CMakeFiles/gen_vec.dir/flags.make
src/generation/CMakeFiles/gen_vec.dir/gen_random_number.cc.o: ../src/generation/gen_random_number.cc
src/generation/CMakeFiles/gen_vec.dir/gen_random_number.cc.o: src/generation/CMakeFiles/gen_vec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/generation/CMakeFiles/gen_vec.dir/gen_random_number.cc.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/generation/CMakeFiles/gen_vec.dir/gen_random_number.cc.o -MF CMakeFiles/gen_vec.dir/gen_random_number.cc.o.d -o CMakeFiles/gen_vec.dir/gen_random_number.cc.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/gen_random_number.cc

src/generation/CMakeFiles/gen_vec.dir/gen_random_number.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gen_vec.dir/gen_random_number.cc.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/gen_random_number.cc > CMakeFiles/gen_vec.dir/gen_random_number.cc.i

src/generation/CMakeFiles/gen_vec.dir/gen_random_number.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gen_vec.dir/gen_random_number.cc.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/gen_random_number.cc -o CMakeFiles/gen_vec.dir/gen_random_number.cc.s

src/generation/CMakeFiles/gen_vec.dir/vec.cpp.o: src/generation/CMakeFiles/gen_vec.dir/flags.make
src/generation/CMakeFiles/gen_vec.dir/vec.cpp.o: ../src/generation/vec.cpp
src/generation/CMakeFiles/gen_vec.dir/vec.cpp.o: src/generation/CMakeFiles/gen_vec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/generation/CMakeFiles/gen_vec.dir/vec.cpp.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/generation/CMakeFiles/gen_vec.dir/vec.cpp.o -MF CMakeFiles/gen_vec.dir/vec.cpp.o.d -o CMakeFiles/gen_vec.dir/vec.cpp.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/vec.cpp

src/generation/CMakeFiles/gen_vec.dir/vec.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gen_vec.dir/vec.cpp.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/vec.cpp > CMakeFiles/gen_vec.dir/vec.cpp.i

src/generation/CMakeFiles/gen_vec.dir/vec.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gen_vec.dir/vec.cpp.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/vec.cpp -o CMakeFiles/gen_vec.dir/vec.cpp.s

# Object files for target gen_vec
gen_vec_OBJECTS = \
"CMakeFiles/gen_vec.dir/gen_vector.cc.o" \
"CMakeFiles/gen_vec.dir/gen_random_number.cc.o" \
"CMakeFiles/gen_vec.dir/vec.cpp.o"

# External object files for target gen_vec
gen_vec_EXTERNAL_OBJECTS =

src/generation/gen_vec: src/generation/CMakeFiles/gen_vec.dir/gen_vector.cc.o
src/generation/gen_vec: src/generation/CMakeFiles/gen_vec.dir/gen_random_number.cc.o
src/generation/gen_vec: src/generation/CMakeFiles/gen_vec.dir/vec.cpp.o
src/generation/gen_vec: src/generation/CMakeFiles/gen_vec.dir/build.make
src/generation/gen_vec: src/generation/CMakeFiles/gen_vec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable gen_vec"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gen_vec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/generation/CMakeFiles/gen_vec.dir/build: src/generation/gen_vec
.PHONY : src/generation/CMakeFiles/gen_vec.dir/build

src/generation/CMakeFiles/gen_vec.dir/clean:
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation && $(CMAKE_COMMAND) -P CMakeFiles/gen_vec.dir/cmake_clean.cmake
.PHONY : src/generation/CMakeFiles/gen_vec.dir/clean

src/generation/CMakeFiles/gen_vec.dir/depend:
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/generation/CMakeFiles/gen_vec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/generation/CMakeFiles/gen_vec.dir/depend
