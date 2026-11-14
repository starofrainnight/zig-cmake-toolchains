include("${CMAKE_CURRENT_LIST_DIR}/zig-toolchain-common.cmake")

set(ZIG_LIBC "none")
set(ZIG_OS "freestanding")
set(ZIG_ARCH "wasm32")
set(ZIG_TARGET "${ZIG_ARCH}-${ZIG_OS}")

set(CMAKE_SYSTEM_NAME "Linux")
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR "${ZIG_ARCH}")

set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")