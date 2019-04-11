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
        keras \
        eventlet \
        flask-socketio

# For matplotlib dependency
apt-get -y install python-tk
