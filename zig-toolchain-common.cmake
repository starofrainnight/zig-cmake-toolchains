if(CMAKE_GENERATOR MATCHES "Visual Studio")
    message(FATAL_ERROR "Visual Studio generator not supported, use: cmake -G Ninja")
endif()

if(WIN32)
    set(SCRIPT_SUFFIX ".cmd")
else()
    set(SCRIPT_SUFFIX ".sh")
endif()

set(CMAKE_C_COMPILER "${CMAKE_CURRENT_LIST_DIR}/zig-cc${SCRIPT_SUFFIX}" -target ${ZIG_TARGET})
set(CMAKE_CXX_COMPILER "${CMAKE_CURRENT_LIST_DIR}/zig-c++${SCRIPT_SUFFIX}" -target ${ZIG_TARGET})

# This is working (thanks to Simon for finding this trick)
set(CMAKE_AR "${CMAKE_CURRENT_LIST_DIR}/zig-ar${SCRIPT_SUFFIX}")
set(CMAKE_RANLIB "${CMAKE_CURRENT_LIST_DIR}/zig-ranlib${SCRIPT_SUFFIX}")
