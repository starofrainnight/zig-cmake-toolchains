include("${CMAKE_CURRENT_LIST_DIR}/zig-toolchain-common.cmake")

set(ZIG_CLIB "gnu")
set(ZIG_OS "windows")
set(ZIG_ARCH "arm")
set(ZIG_TARGET "${ZIG_ARCH}-${ZIG_OS}-${ZIG_CLIB}")

set(CMAKE_SYSTEM_NAME "Windows")

# set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR "${ZIG_ARCH}")