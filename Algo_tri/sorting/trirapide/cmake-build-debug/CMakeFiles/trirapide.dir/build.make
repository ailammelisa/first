# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/melisa/Bureau/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/melisa/Bureau/clion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/melisa/Bureau/trirapide

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/melisa/Bureau/trirapide/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/trirapide.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/trirapide.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/trirapide.dir/flags.make

CMakeFiles/trirapide.dir/main.cpp.o: CMakeFiles/trirapide.dir/flags.make
CMakeFiles/trirapide.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/melisa/Bureau/trirapide/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/trirapide.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trirapide.dir/main.cpp.o -c /home/melisa/Bureau/trirapide/main.cpp

CMakeFiles/trirapide.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trirapide.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/melisa/Bureau/trirapide/main.cpp > CMakeFiles/trirapide.dir/main.cpp.i

CMakeFiles/trirapide.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trirapide.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/melisa/Bureau/trirapide/main.cpp -o CMakeFiles/trirapide.dir/main.cpp.s

# Object files for target trirapide
trirapide_OBJECTS = \
"CMakeFiles/trirapide.dir/main.cpp.o"

# External object files for target trirapide
trirapide_EXTERNAL_OBJECTS =

trirapide: CMakeFiles/trirapide.dir/main.cpp.o
trirapide: CMakeFiles/trirapide.dir/build.make
trirapide: CMakeFiles/trirapide.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/melisa/Bureau/trirapide/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable trirapide"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/trirapide.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/trirapide.dir/build: trirapide

.PHONY : CMakeFiles/trirapide.dir/build

CMakeFiles/trirapide.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/trirapide.dir/cmake_clean.cmake
.PHONY : CMakeFiles/trirapide.dir/clean

CMakeFiles/trirapide.dir/depend:
	cd /home/melisa/Bureau/trirapide/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/melisa/Bureau/trirapide /home/melisa/Bureau/trirapide /home/melisa/Bureau/trirapide/cmake-build-debug /home/melisa/Bureau/trirapide/cmake-build-debug /home/melisa/Bureau/trirapide/cmake-build-debug/CMakeFiles/trirapide.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/trirapide.dir/depend

