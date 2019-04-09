FROM tensorflow/tensorflow:1.9.0-gpu

## REF: https://github.com/phusion/baseimage-docker/tree/master/image
ADD ./dbuild /dbuild

RUN /dbuild/prepare.sh && \
    /dbuild/install_tools.sh &&\
    /dbuild/install_python_dep.sh &&\
    /dbuild/cleanup.sh
