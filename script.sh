#!/usr/bin/env bash
set -e
PREFIX="$HOME/.local"

# m4
cd "$HOME/Miner_resources/src/m4-latest"
./configure --prefix="$PREFIX"
make
make install

# autoconf
cd "$HOME/Miner_resources/src/autoconf-latest"
./configure --prefix="$PREFIX"
make
make install

# automake
cd "$HOME/Miner_resources/src/automake-1.18"
./configure --prefix="$PREFIX"
make
make install

# libtool
cd "$HOME/Miner_resources/src/libtool-2.5.4"
./configure --prefix="$PREFIX"
make
make install

# cmake (without OpenSSL)
cd "$HOME/Miner_resources/src/cmake-4.2.0"
./bootstrap --prefix="$PREFIX" -DCMAKE_USE_OPENSSL=OFF
make
make install
