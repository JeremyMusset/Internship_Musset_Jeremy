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
include muse/CMakeFiles/par_dot_prod.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include muse/CMakeFiles/par_dot_prod.dir/compiler_depend.make

# Include the progress variables for this target.
include muse/CMakeFiles/par_dot_prod.dir/progress.make

# Include the compile flags for this target's objects.
include muse/CMakeFiles/par_dot_prod.dir/flags.make

muse/CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.o: muse/CMakeFiles/par_dot_prod.dir/flags.make
muse/CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.o: ../src/generation/gen_random_vector.cc
muse/CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.o: muse/CMakeFiles/par_dot_prod.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object muse/CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT muse/CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.o -MF CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.o.d -o CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/gen_random_vector.cc

muse/CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/gen_random_vector.cc > CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.i

muse/CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/generation/gen_random_vector.cc -o CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.s

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.o: muse/CMakeFiles/par_dot_prod.dir/flags.make
muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.o: ../src/dot_product/Rare_Blas.cc
muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.o: muse/CMakeFiles/par_dot_prod.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.o -MF CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.o.d -o CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/Rare_Blas.cc

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/Rare_Blas.cc > CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.i

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/Rare_Blas.cc -o CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.s

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.o: muse/CMakeFiles/par_dot_prod.dir/flags.make
muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.o: ../src/dot_product/common.cc
muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.o: muse/CMakeFiles/par_dot_prod.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.o -MF CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.o.d -o CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/common.cc

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/common.cc > CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.i

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/common.cc -o CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.s

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.o: muse/CMakeFiles/par_dot_prod.dir/flags.make
muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.o: ../src/dot_product/correct_rounding.cc
muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.o: muse/CMakeFiles/par_dot_prod.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.o -MF CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.o.d -o CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/correct_rounding.cc

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/correct_rounding.cc > CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.i

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/correct_rounding.cc -o CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.s

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.o: muse/CMakeFiles/par_dot_prod.dir/flags.make
muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.o: ../src/dot_product/eft.cc
muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.o: muse/CMakeFiles/par_dot_prod.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.o -MF CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.o.d -o CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/eft.cc

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/eft.cc > CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.i

muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/dot_product/eft.cc -o CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.s

muse/CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.o: muse/CMakeFiles/par_dot_prod.dir/flags.make
muse/CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.o: ../muse/par_dot_prod.cpp
muse/CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.o: muse/CMakeFiles/par_dot_prod.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object muse/CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT muse/CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.o -MF CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.o.d -o CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/muse/par_dot_prod.cpp

muse/CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/muse/par_dot_prod.cpp > CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.i

muse/CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/muse/par_dot_prod.cpp -o CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.s

# Object files for target par_dot_prod
par_dot_prod_OBJECTS = \
"CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.o" \
"CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.o" \
"CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.o" \
"CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.o" \
"CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.o" \
"CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.o"

# External object files for target par_dot_prod
par_dot_prod_EXTERNAL_OBJECTS =

muse/par_dot_prod: muse/CMakeFiles/par_dot_prod.dir/__/src/generation/gen_random_vector.cc.o
muse/par_dot_prod: muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/Rare_Blas.cc.o
muse/par_dot_prod: muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/common.cc.o
muse/par_dot_prod: muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/correct_rounding.cc.o
muse/par_dot_prod: muse/CMakeFiles/par_dot_prod.dir/__/src/dot_product/eft.cc.o
muse/par_dot_prod: muse/CMakeFiles/par_dot_prod.dir/par_dot_prod.cpp.o
muse/par_dot_prod: muse/CMakeFiles/par_dot_prod.dir/build.make
muse/par_dot_prod: /usr/lib/x86_64-linux-gnu/libmpfr.so
muse/par_dot_prod: muse/CMakeFiles/par_dot_prod.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable par_dot_prod"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/par_dot_prod.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
muse/CMakeFiles/par_dot_prod.dir/build: muse/par_dot_prod
.PHONY : muse/CMakeFiles/par_dot_prod.dir/build

muse/CMakeFiles/par_dot_prod.dir/clean:
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse && $(CMAKE_COMMAND) -P CMakeFiles/par_dot_prod.dir/cmake_clean.cmake
.PHONY : muse/CMakeFiles/par_dot_prod.dir/clean

muse/CMakeFiles/par_dot_prod.dir/depend:
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/muse /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/muse/CMakeFiles/par_dot_prod.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : muse/CMakeFiles/par_dot_prod.dir/depend

