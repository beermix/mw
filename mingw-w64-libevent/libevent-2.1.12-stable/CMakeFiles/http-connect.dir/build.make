# CMAKE generated file: DO NOT EDIT!
# Generated by "MSYS Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /G/msys/mingw64/bin/cmake.exe

# The command to remove a file.
RM = /G/msys/mingw64/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable

# Include any dependencies generated for this target.
include CMakeFiles/http-connect.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/http-connect.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/http-connect.dir/flags.make

CMakeFiles/http-connect.dir/sample/http-connect.c.obj: CMakeFiles/http-connect.dir/flags.make
CMakeFiles/http-connect.dir/sample/http-connect.c.obj: sample/http-connect.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/http-connect.dir/sample/http-connect.c.obj"
	/G/msys/mingw64/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http-connect.dir/sample/http-connect.c.obj   -c /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/sample/http-connect.c

CMakeFiles/http-connect.dir/sample/http-connect.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http-connect.dir/sample/http-connect.c.i"
	/G/msys/mingw64/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/sample/http-connect.c > CMakeFiles/http-connect.dir/sample/http-connect.c.i

CMakeFiles/http-connect.dir/sample/http-connect.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http-connect.dir/sample/http-connect.c.s"
	/G/msys/mingw64/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/sample/http-connect.c -o CMakeFiles/http-connect.dir/sample/http-connect.c.s

# Object files for target http-connect
http__connect_OBJECTS = \
"CMakeFiles/http-connect.dir/sample/http-connect.c.obj"

# External object files for target http-connect
http__connect_EXTERNAL_OBJECTS =

bin/http-connect.exe: CMakeFiles/http-connect.dir/sample/http-connect.c.obj
bin/http-connect.exe: CMakeFiles/http-connect.dir/build.make
bin/http-connect.exe: G:/msys/mingw64/lib/libssl.dll.a
bin/http-connect.exe: G:/msys/mingw64/lib/libcrypto.dll.a
bin/http-connect.exe: G:/msys/mingw64/lib/libz.dll.a
bin/http-connect.exe: lib/libevent_extra.dll.a
bin/http-connect.exe: lib/libevent_core.dll.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/http-connect.exe"
	/G/msys/mingw64/bin/cmake.exe -E rm -f CMakeFiles/http-connect.dir/objects.a
	/G/msys/mingw64/bin/ar.exe cr CMakeFiles/http-connect.dir/objects.a $(http__connect_OBJECTS) $(http__connect_EXTERNAL_OBJECTS)
	/G/msys/mingw64/bin/gcc.exe  -Wall -Wextra -Wno-unused-parameter -Wstrict-aliasing -Wstrict-prototypes -fno-strict-aliasing -Wmissing-prototypes -Winit-self -Wmissing-field-initializers -Wdeclaration-after-statement -Waddress -Wnormalized=id -Woverride-init -Wlogical-op -Wwrite-strings -O3 -DNDEBUG   -Wl,--whole-archive CMakeFiles/http-connect.dir/objects.a -Wl,--no-whole-archive  -o bin/http-connect.exe -Wl,--major-image-version,0,--minor-image-version,0  -lssl -lcrypto -lz -lws2_32 -lshell32 -ladvapi32 lib/libevent_extra.dll.a lib/libevent_core.dll.a -liphlpapi -lws2_32 -lshell32 -ladvapi32 -lkernel32 -luser32 -lgdi32 -lwinspool -lshell32 -lole32 -loleaut32 -luuid -lcomdlg32 -ladvapi32 

# Rule to build all files generated by this target.
CMakeFiles/http-connect.dir/build: bin/http-connect.exe

.PHONY : CMakeFiles/http-connect.dir/build

CMakeFiles/http-connect.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/http-connect.dir/cmake_clean.cmake
.PHONY : CMakeFiles/http-connect.dir/clean

CMakeFiles/http-connect.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MSYS Makefiles" /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/CMakeFiles/http-connect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/http-connect.dir/depend

