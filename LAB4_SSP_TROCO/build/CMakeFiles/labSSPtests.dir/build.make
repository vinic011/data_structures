# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_SOURCE_DIR = /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build

# Include any dependencies generated for this target.
include CMakeFiles/labSSPtests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/labSSPtests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/labSSPtests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/labSSPtests.dir/flags.make

CMakeFiles/labSSPtests.dir/test/testSSP.cpp.o: CMakeFiles/labSSPtests.dir/flags.make
CMakeFiles/labSSPtests.dir/test/testSSP.cpp.o: /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/test/testSSP.cpp
CMakeFiles/labSSPtests.dir/test/testSSP.cpp.o: CMakeFiles/labSSPtests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/labSSPtests.dir/test/testSSP.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/labSSPtests.dir/test/testSSP.cpp.o -MF CMakeFiles/labSSPtests.dir/test/testSSP.cpp.o.d -o CMakeFiles/labSSPtests.dir/test/testSSP.cpp.o -c /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/test/testSSP.cpp

CMakeFiles/labSSPtests.dir/test/testSSP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/labSSPtests.dir/test/testSSP.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/test/testSSP.cpp > CMakeFiles/labSSPtests.dir/test/testSSP.cpp.i

CMakeFiles/labSSPtests.dir/test/testSSP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/labSSPtests.dir/test/testSSP.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/test/testSSP.cpp -o CMakeFiles/labSSPtests.dir/test/testSSP.cpp.s

CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.o: CMakeFiles/labSSPtests.dir/flags.make
CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.o: /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverAluno2.cpp
CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.o: CMakeFiles/labSSPtests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.o -MF CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.o.d -o CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.o -c /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverAluno2.cpp

CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverAluno2.cpp > CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.i

CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverAluno2.cpp -o CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.s

CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.o: CMakeFiles/labSSPtests.dir/flags.make
CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.o: /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverExtra.cpp
CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.o: CMakeFiles/labSSPtests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.o -MF CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.o.d -o CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.o -c /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverExtra.cpp

CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverExtra.cpp > CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.i

CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverExtra.cpp -o CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.s

CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.o: CMakeFiles/labSSPtests.dir/flags.make
CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.o: /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverPD.cpp
CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.o: CMakeFiles/labSSPtests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.o -MF CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.o.d -o CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.o -c /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverPD.cpp

CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverPD.cpp > CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.i

CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/SSPSolverPD.cpp -o CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.s

CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.o: CMakeFiles/labSSPtests.dir/flags.make
CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.o: /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverDivConquer.cpp
CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.o: CMakeFiles/labSSPtests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.o -MF CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.o.d -o CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.o -c /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverDivConquer.cpp

CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverDivConquer.cpp > CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.i

CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverDivConquer.cpp -o CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.s

CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.o: CMakeFiles/labSSPtests.dir/flags.make
CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.o: /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverGreedy.cpp
CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.o: CMakeFiles/labSSPtests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.o -MF CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.o.d -o CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.o -c /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverGreedy.cpp

CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverGreedy.cpp > CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.i

CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverGreedy.cpp -o CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.s

CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.o: CMakeFiles/labSSPtests.dir/flags.make
CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.o: /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverPD.cpp
CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.o: CMakeFiles/labSSPtests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.o -MF CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.o.d -o CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.o -c /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverPD.cpp

CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverPD.cpp > CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.i

CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/TrocoSolverPD.cpp -o CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.s

CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.o: CMakeFiles/labSSPtests.dir/flags.make
CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.o: /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/testesAluno.cpp
CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.o: CMakeFiles/labSSPtests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.o -MF CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.o.d -o CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.o -c /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/testesAluno.cpp

CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/testesAluno.cpp > CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.i

CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/src/testesAluno.cpp -o CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.s

# Object files for target labSSPtests
labSSPtests_OBJECTS = \
"CMakeFiles/labSSPtests.dir/test/testSSP.cpp.o" \
"CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.o" \
"CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.o" \
"CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.o" \
"CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.o" \
"CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.o" \
"CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.o" \
"CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.o"

# External object files for target labSSPtests
labSSPtests_EXTERNAL_OBJECTS =

labSSPtests: CMakeFiles/labSSPtests.dir/test/testSSP.cpp.o
labSSPtests: CMakeFiles/labSSPtests.dir/src/SSPSolverAluno2.cpp.o
labSSPtests: CMakeFiles/labSSPtests.dir/src/SSPSolverExtra.cpp.o
labSSPtests: CMakeFiles/labSSPtests.dir/src/SSPSolverPD.cpp.o
labSSPtests: CMakeFiles/labSSPtests.dir/src/TrocoSolverDivConquer.cpp.o
labSSPtests: CMakeFiles/labSSPtests.dir/src/TrocoSolverGreedy.cpp.o
labSSPtests: CMakeFiles/labSSPtests.dir/src/TrocoSolverPD.cpp.o
labSSPtests: CMakeFiles/labSSPtests.dir/src/testesAluno.cpp.o
labSSPtests: CMakeFiles/labSSPtests.dir/build.make
labSSPtests: lib/libgtest.a
labSSPtests: lib/libgtest_main.a
labSSPtests: libLabParadigma.a
labSSPtests: /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/lib/libsolParadigm.a
labSSPtests: /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/lib/libsolSSPDisPis.a
labSSPtests: lib/libgtest.a
labSSPtests: CMakeFiles/labSSPtests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable labSSPtests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/labSSPtests.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D TEST_TARGET=labSSPtests -D TEST_EXECUTABLE=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/labSSPtests -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=labSSPtests_TESTS -D CTEST_FILE=/home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/labSSPtests[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.24/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/labSSPtests.dir/build: labSSPtests
.PHONY : CMakeFiles/labSSPtests.dir/build

CMakeFiles/labSSPtests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/labSSPtests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/labSSPtests.dir/clean

CMakeFiles/labSSPtests.dir/depend:
	cd /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build /home/vinicius/Documents/ctc12/LAB4_SSP_TROCO/build/CMakeFiles/labSSPtests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/labSSPtests.dir/depend
