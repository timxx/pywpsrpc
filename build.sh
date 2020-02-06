#!/usr/bin/bash

set -e

dirs=(sip/rpcetapi sip/rpcwppapi sip/rpcwpsapi)

for dir in ${dirs[@]} ; do
    cd $dir
    python3 configure.py
    make -j`nproc`
    cd -
done
