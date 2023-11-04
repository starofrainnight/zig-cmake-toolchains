include("${CMAKE_CURRENT_LIST_DIR}/zig-toolchain-common.cmake")

set(ZIG_CLIB "none")
set(ZIG_OS "macos")
set(ZIG_ARCH "aarch64")
set(ZIG_TARGET "${ZIG_ARCH}-${ZIG_OS}-${ZIG_CLIB}")

set(CMAKE_SYSTEM_NAME "Darwin")

# set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR "${ZIG_ARCH}")