# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget libevent::core libevent::extra libevent::openssl)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target libevent::core
add_library(libevent::core STATIC IMPORTED)

set_target_properties(libevent::core PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include"
  INTERFACE_LINK_LIBRARIES "ws2_32;shell32;advapi32;iphlpapi"
)

# Create imported target libevent::extra
add_library(libevent::extra STATIC IMPORTED)

set_target_properties(libevent::extra PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include"
  INTERFACE_LINK_LIBRARIES "ws2_32;shell32;advapi32;libevent::core"
)

# Create imported target libevent::openssl
add_library(libevent::openssl STATIC IMPORTED)

set_target_properties(libevent::openssl PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/mingw64/include"
  INTERFACE_LINK_LIBRARIES "ws2_32;shell32;advapi32;libevent::core;G:/msys/mingw64/lib/libssl.dll.a;G:/msys/mingw64/lib/libcrypto.dll.a"
)

# Import target "libevent::core" for configuration "Release"
set_property(TARGET libevent::core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libevent::core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/lib/libevent_core.a"
  )

# Import target "libevent::extra" for configuration "Release"
set_property(TARGET libevent::extra APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libevent::extra PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/lib/libevent_extra.a"
  )

# Import target "libevent::openssl" for configuration "Release"
set_property(TARGET libevent::openssl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libevent::openssl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/lib/libevent_openssl.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget libevent::core libevent::extra libevent::openssl)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target libevent::core
add_library(libevent::core STATIC IMPORTED)

set_target_properties(libevent::core PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include"
  INTERFACE_LINK_LIBRARIES "ws2_32;shell32;advapi32;iphlpapi"
)

# Create imported target libevent::extra
add_library(libevent::extra STATIC IMPORTED)

set_target_properties(libevent::extra PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include"
  INTERFACE_LINK_LIBRARIES "ws2_32;shell32;advapi32;libevent::core"
)

# Create imported target libevent::openssl
add_library(libevent::openssl STATIC IMPORTED)

set_target_properties(libevent::openssl PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/mingw64/include"
  INTERFACE_LINK_LIBRARIES "ws2_32;shell32;advapi32;libevent::core;G:/msys/mingw64/lib/libssl.dll.a;G:/msys/mingw64/lib/libcrypto.dll.a"
)

# Import target "libevent::core" for configuration "Release"
set_property(TARGET libevent::core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libevent::core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/lib/libevent_core.a"
  )

# Import target "libevent::extra" for configuration "Release"
set_property(TARGET libevent::extra APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libevent::extra PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/lib/libevent_extra.a"
  )

# Import target "libevent::openssl" for configuration "Release"
set_property(TARGET libevent::openssl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libevent::openssl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/lib/libevent_openssl.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget libevent::core libevent::extra libevent::openssl)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target libevent::core
add_library(libevent::core STATIC IMPORTED)

set_target_properties(libevent::core PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include"
  INTERFACE_LINK_LIBRARIES "ws2_32;shell32;advapi32;iphlpapi"
)

# Create imported target libevent::extra
add_library(libevent::extra STATIC IMPORTED)

set_target_properties(libevent::extra PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include"
  INTERFACE_LINK_LIBRARIES "ws2_32;shell32;advapi32;libevent::core"
)

# Create imported target libevent::openssl
add_library(libevent::openssl STATIC IMPORTED)

set_target_properties(libevent::openssl PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/include;G:/msys/mingw64/include"
  INTERFACE_LINK_LIBRARIES "ws2_32;shell32;advapi32;libevent::core;G:/msys/mingw64/lib/libssl.dll.a;G:/msys/mingw64/lib/libcrypto.dll.a"
)

# Import target "libevent::core" for configuration "Release"
set_property(TARGET libevent::core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libevent::core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/lib/libevent_core.a"
  )

# Import target "libevent::extra" for configuration "Release"
set_property(TARGET libevent::extra APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libevent::extra PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/lib/libevent_extra.a"
  )

# Import target "libevent::openssl" for configuration "Release"
set_property(TARGET libevent::openssl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libevent::openssl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "G:/msys/home/User/mw-my/mingw-w64-libevent/libevent-2.1.12-stable/lib/libevent_openssl.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
