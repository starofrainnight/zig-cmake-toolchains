include("${CMAKE_CURRENT_LIST_DIR}/zig-toolchain-common.cmake")

set(ZIG_LIBC "gnu")
set(ZIG_OS "linux")
set(ZIG_ARCH "sparc")
set(ZIG_TARGET "${ZIG_ARCH}-${ZIG_OS}-${ZIG_LIBC}")

set(CMAKE_SYSTEM_NAME "Linux")
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR "${ZIG_ARCH}")
