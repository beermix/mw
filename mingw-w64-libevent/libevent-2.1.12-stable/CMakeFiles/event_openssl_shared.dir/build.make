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
include CMakeFiles/event_openssl_shared.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/event_openssl_shared.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/event_openssl_shared.dir/flags.make

CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.obj: CMakeFiles/event_openssl_shared.dir/flags.make
CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.obj: bufferevent_openssl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.obj"
	/G/msys/mingw64/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.obj   -c /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/bufferevent_openssl.c

CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.i"
	/G/msys/mingw64/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/bufferevent_openssl.c > CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.i

CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.s"
	/G/msys/mingw64/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/bufferevent_openssl.c -o CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.s

# Object files for target event_openssl_shared
event_openssl_shared_OBJECTS = \
"CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.obj"

# External object files for target event_openssl_shared
event_openssl_shared_EXTERNAL_OBJECTS =

bin/libevent_openssl.dll: CMakeFiles/event_openssl_shared.dir/bufferevent_openssl.c.obj
bin/libevent_openssl.dll: CMakeFiles/event_openssl_shared.dir/build.make
bin/libevent_openssl.dll: lib/libevent_core.dll.a
bin/libevent_openssl.dll: G:/msys/mingw64/lib/libssl.dll.a
bin/libevent_openssl.dll: G:/msys/mingw64/lib/libcrypto.dll.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library bin/libevent_openssl.dll"
	/G/msys/mingw64/bin/cmake.exe -E rm -f CMakeFiles/event_openssl_shared.dir/objects.a
	/G/msys/mingw64/bin/ar.exe cr CMakeFiles/event_openssl_shared.dir/objects.a $(event_openssl_shared_OBJECTS) $(event_openssl_shared_EXTERNAL_OBJECTS)
	/G/msys/mingw64/bin/gcc.exe   -Wall -Wextra -Wno-unused-parameter -Wstrict-aliasing -Wstrict-prototypes -fno-strict-aliasing -Wmissing-prototypes -Winit-self -Wmissing-field-initializers -Wdeclaration-after-statement -Waddress -Wnormalized=id -Woverride-init -Wlogical-op -Wwrite-strings -O3 -DNDEBUG -fvisibility=hidden -shared -o bin/libevent_openssl.dll -Wl,--out-implib,lib/libevent_openssl.dll.a -Wl,--major-image-version,0,--minor-image-version,0 -Wl,--whole-archive CMakeFiles/event_openssl_shared.dir/objects.a -Wl,--no-whole-archive  -lws2_32 -lshell32 -ladvapi32 lib/libevent_core.dll.a -lssl -lcrypto -lws2_32 -lshell32 -ladvapi32 -liphlpapi -lkernel32 -luser32 -lgdi32 -lwinspool -lshell32 -lole32 -loleaut32 -luuid -lcomdlg32 -ladvapi32 

# Rule to build all files generated by this target.
CMakeFiles/event_openssl_shared.dir/build: bin/libevent_openssl.dll

.PHONY : CMakeFiles/event_openssl_shared.dir/build

CMakeFiles/event_openssl_shared.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/event_openssl_shared.dir/cmake_clean.cmake
.PHONY : CMakeFiles/event_openssl_shared.dir/clean

CMakeFiles/event_openssl_shared.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MSYS Makefiles" /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable /G/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/CMakeFiles/event_openssl_shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/event_openssl_shared.dir/depend

