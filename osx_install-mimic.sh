#!/usr/bin/env bash
# exit on any error
set -Ee

MIMIC_DIR=mimic
CORES=$(sysctl -n hw.ncpu)

# download and install mimic
if [ ! -d ${MIMIC_DIR} ]; then
    git clone https://github.com/MycroftAI/mimic.git
    cd ${MIMIC_DIR}
    ./configure
    make -j$CORES
else
    # ensure mimic is up to date
    cd ${MIMIC_DIR}
    git pull
    make clean
    ./configure
    make -j$CORES
fi
