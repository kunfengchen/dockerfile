#! /bin/bash

docker run -it --rm \
   -p 8888:8888\
   --env="DISPLAY=192.168.99.1:0" \
   --volume "$HOME/sharefolder:/sharefolder" \
   kunfengchen/u14-indigo-autoware-carnd-p1 /bin/bash
  #KFC --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
