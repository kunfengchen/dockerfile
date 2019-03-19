FROM tensorflow/tensorflow:2.0.0a0-gpu-py3-jupyter

## REF: https://github.com/phusion/baseimage-docker/tree/master/image
ADD ./dbuild /dbuild

RUN /dbuild/prepare.sh && \
    /dbuild/install_tools.sh &&\
    /dbuild/cleanup.sh
