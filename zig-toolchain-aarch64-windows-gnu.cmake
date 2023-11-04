include("${CMAKE_CURRENT_LIST_DIR}/zig-toolchain-common.cmake")

set(ZIG_LIBC "gnu")
set(ZIG_OS "windows")
set(ZIG_ARCH "aarch64")
set(ZIG_TARGET "${ZIG_ARCH}-${ZIG_OS}-${ZIG_LIBC}")

set(CMAKE_SYSTEM_NAME "Windows")
set(CMAKE_SYSTEM_PROCESSOR "${ZIG_ARCH}")
