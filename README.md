# zig-cmake-toolchains

Provided a series toolchain files for use zig as c/c++ cross-compiler

## Usage

Just build your cmake project by CMAKE_TOOLCHAIN_FILE like this:

    mkdir build
    cd build
    cmake -DCMAKE_TOOLCHAIN_FILE=<PathToZigCmakeToolchainsDir>/zig-toolchain-powerpc64le-linux-musl.cmake ..
    cmake --build .
