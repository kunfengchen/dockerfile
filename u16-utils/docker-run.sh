#! /bin/bash

nvidia-docker run -it --rm \
   --env="DISPLAY" \
   --privileged \
   --volume="/dev/bus/usb:/dev/bus/usb:rw" \
   --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
   --volume "$HOME/sharefolder:/sharefolder" \
   kunfengchen/u16-utils /bin/bash
