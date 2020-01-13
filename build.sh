#!/usr/bin/bash

set -e

dirs=(sip/etapi sip/wppapi sip/wpsapi)

for dir in ${dirs[@]} ; do
    cd $dir
    python3 configure.py
    make -j`nproc`
    cd -
done
