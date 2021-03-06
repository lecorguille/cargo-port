#!/bin/bash
set -ex

if hash conda 2>/dev/null; then
    echo "Conda already installed"
else
    echo "Installing Conda"
    wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
    bash Miniconda2-latest-Linux-x86_64.sh -b -p $CONDA_INSTALLATION_PATH || echo "Conda already installed"
    echo "Installing conda-build"
    conda install -y conda-build
fi
