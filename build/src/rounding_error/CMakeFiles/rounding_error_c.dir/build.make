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
include src/rounding_error/CMakeFiles/rounding_error_c.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/rounding_error/CMakeFiles/rounding_error_c.dir/compiler_depend.make

# Include the progress variables for this target.
include src/rounding_error/CMakeFiles/rounding_error_c.dir/progress.make

# Include the compile flags for this target's objects.
include src/rounding_error/CMakeFiles/rounding_error_c.dir/flags.make

src/rounding_error/CMakeFiles/rounding_error_c.dir/rounding_error.c.o: src/rounding_error/CMakeFiles/rounding_error_c.dir/flags.make
src/rounding_error/CMakeFiles/rounding_error_c.dir/rounding_error.c.o: ../src/rounding_error/rounding_error.c
src/rounding_error/CMakeFiles/rounding_error_c.dir/rounding_error.c.o: src/rounding_error/CMakeFiles/rounding_error_c.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/rounding_error/CMakeFiles/rounding_error_c.dir/rounding_error.c.o"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/rounding_error && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/rounding_error/CMakeFiles/rounding_error_c.dir/rounding_error.c.o -MF CMakeFiles/rounding_error_c.dir/rounding_error.c.o.d -o CMakeFiles/rounding_error_c.dir/rounding_error.c.o -c /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/rounding_error/rounding_error.c

src/rounding_error/CMakeFiles/rounding_error_c.dir/rounding_error.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rounding_error_c.dir/rounding_error.c.i"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/rounding_error && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/rounding_error/rounding_error.c > CMakeFiles/rounding_error_c.dir/rounding_error.c.i

src/rounding_error/CMakeFiles/rounding_error_c.dir/rounding_error.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rounding_error_c.dir/rounding_error.c.s"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/rounding_error && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/rounding_error/rounding_error.c -o CMakeFiles/rounding_error_c.dir/rounding_error.c.s

# Object files for target rounding_error_c
rounding_error_c_OBJECTS = \
"CMakeFiles/rounding_error_c.dir/rounding_error.c.o"

# External object files for target rounding_error_c
rounding_error_c_EXTERNAL_OBJECTS =

src/rounding_error/rounding_error_c: src/rounding_error/CMakeFiles/rounding_error_c.dir/rounding_error.c.o
src/rounding_error/rounding_error_c: src/rounding_error/CMakeFiles/rounding_error_c.dir/build.make
src/rounding_error/rounding_error_c: src/rounding_error/CMakeFiles/rounding_error_c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable rounding_error_c"
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/rounding_error && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rounding_error_c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/rounding_error/CMakeFiles/rounding_error_c.dir/build: src/rounding_error/rounding_error_c
.PHONY : src/rounding_error/CMakeFiles/rounding_error_c.dir/build

src/rounding_error/CMakeFiles/rounding_error_c.dir/clean:
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/rounding_error && $(CMAKE_COMMAND) -P CMakeFiles/rounding_error_c.dir/cmake_clean.cmake
.PHONY : src/rounding_error/CMakeFiles/rounding_error_c.dir/clean

src/rounding_error/CMakeFiles/rounding_error_c.dir/depend:
	cd /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/src/rounding_error /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/rounding_error /home/jerem/Data/M2/Stage/git/Internship_Musset_Jeremy/build/src/rounding_error/CMakeFiles/rounding_error_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/rounding_error/CMakeFiles/rounding_error_c.dir/depend

