# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_stm_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED stm_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(stm_FOUND FALSE)
  elseif(NOT stm_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(stm_FOUND FALSE)
  endif()
  return()
endif()
set(_stm_CONFIG_INCLUDED TRUE)

# output package information
if(NOT stm_FIND_QUIETLY)
  message(STATUS "Found stm: 0.3.0 (${stm_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'stm' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${stm_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(stm_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${stm_DIR}/${_extra}")
endforeach()
