FROM ubuntu:16.04 

ADD ./dbuild /dbuild

RUN /dbuild/prepare.sh && \
    /dbuild/install_tools.sh 

## && \
##     /dbuild/cleanup.sh
