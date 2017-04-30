#! /bin/bash

### pre-request
# on a host terminal, run:
# $ socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"

## ip is from interface en0 for Docker for Mac
# ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
## ip is from interface vboxnet0 for Docker Toolbox
# ip=$(ifconfig vboxnet0 | grep inet | awk '$1=="inet" {print $2}')

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

docker run -it \
   --env="DISPLAY=$ip:0" \
   --volume /tmp/.X11-unix:/tmp/.X11-unix \
   --volume "$HOME/sharefolder:/sharefolder" \
   --volume "$HOME/Downloads:/downloads" \
   --volume "/mnt/usb:/mnt/usb" \
   kunfengchen/u14-utils:v1 /bin/bash
