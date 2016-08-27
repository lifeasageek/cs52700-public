#!/bin/bash

set -e

# Download and decompress AFL.
wget http://lcamtuf.coredump.cx/afl/releases/afl-2.33b.tgz
tar -xzvf ./afl-2.33b.tgz

# Build AFL.
pushd ./afl-2.33b
make -j`nproc`

# Setup AFL's qemu_mode.
pushd qemu_mode
./build_qemu_support.sh
