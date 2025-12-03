#!/usr/bin/env bash
set -e
PREFIX="$HOME/.local"

# m4
cd "$HOME/src/m4-latest"
./configure --prefix="$PREFIX"
make
make install

# autoconf
cd "$HOME/src/autoconf-latest"
./configure --prefix="$PREFIX"
make
make install

# automake
cd "$HOME/src/automake-1.18"
./configure --prefix="$PREFIX"
make
make install

# libtool
cd "$HOME/src/libtool-2.5.4"
./configure --prefix="$PREFIX"
make
make install

# cmake (without OpenSSL)
cd "$HOME/src/cmake-4.2.0"
./bootstrap --prefix="$PREFIX" -DCMAKE_USE_OPENSSL=OFF
make
make install
