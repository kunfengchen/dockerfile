#!/bin/bash
pip --no-cache-dir install \
        ipykernel \
        jupyter \
        matplotlib \
        numpy \
        scipy \
        sklearn \
        h5py \
        Pillow \
        pandas \
        kears \
        eventlet \
        flask-socketio

# For matplotlib dependency
sudo apt-get -y install python-tk
