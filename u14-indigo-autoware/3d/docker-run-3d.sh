#! /bin/bash

#   --net host \
#   --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
nvidia-docker run -it --rm \
   --env="DISPLAY" \
   --env="QT_X11_NO_MITSHM=1" \
   --volume "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
   --volume "$HOME/sharefolder:/sharefolder" \
   kunfengchen/autoware /bin/bash
