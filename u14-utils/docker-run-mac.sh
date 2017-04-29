#! /bin/bash

docker run -it --rm \
   --env="DISPLAY" \
   --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
   --volume "$HOME/sharefolder:/sharefolder" \
   --volume "$HOME/Downloads:/downloads" \
   kunfengchen/u14-utils /bin/bash
