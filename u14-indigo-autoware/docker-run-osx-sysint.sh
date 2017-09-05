#! /bin/bash

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

docker run -it --rm \
   -p 4568:4567 \
   --env="DISPLAY=$ip:0" \
   --volume /tmp/.X11-unix:/tmp/.X11-unix \
   --volume "$HOME/sharefolder:/sharefolder" \
   kunfengchen/autoware-sysint /bin/bash
