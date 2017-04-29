#! /bin/bash

nvidia-docker run -it --rm \
   --env="DISPLAY" \
   --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
   --volume "$HOME/sharefolder:/sharefolder" \
   kunfengchen/u14-utils /bin/bash
