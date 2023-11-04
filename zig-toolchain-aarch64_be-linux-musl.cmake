include("${CMAKE_CURRENT_LIST_DIR}/zig-toolchain-common.cmake")

set(ZIG_CLIB "musl")
set(ZIG_OS "linux")
set(ZIG_ARCH "aarch64_be")
set(ZIG_TARGET "${ZIG_ARCH}-${ZIG_OS}-${ZIG_CLIB}")

set(CMAKE_SYSTEM_NAME "Linux")
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR "${ZIG_ARCH}")