## Docker Documentation
https://docs.docker.com/

## Using Dockerfile

cd to one of subdir for the specific Dockerfile

### Build (Take about an hour?)
```
$ sh docker-build.sh
```
### Run
```
$ sh docker-run.sh

(You are in the container now)

#

```


## X Display back from docker image
### OSX
Ref: https://github.com/docker/docker/issues/8710

1. In a host terminal:
  ```
  socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
  ```

2. Change the docker-run.sh ip line to "Docker ToolBox" if not using Docker for Mac

3. In another host terminal:
  ```
  ./docker-run-mac.sh
  ```
 Example: [docker-run-mac.sh](u14-utils/docker-run-mac.sh)
 
 
 ### Linux
 
 ```
 xhost -
 ```
 
 ```
 nvidia-docker run -it \
   --env="DISPLAY" \
   --net=host \
   --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
   --volume "$HOME/sharefolder:/sharefolder" \
   kunfengchen/u14-utils /bin/bash
 ```
   
## Forward USB
Add the following `--device` parameter into docker command:
```
--device=/dev/bus/usb:/dev/bus/usb:rwm
```
or (--device is currently not working ...)
```
   --privileged \
   --volume="/dev/bus/usb:/dev/bus/usb:rw" \
```
### Docker for MAC (Not supported)
### Docker Toolbox
1. Stop the "default" vm from VirtualBox
2. Enable USB Controller from VirtualBox->Preferences->Ports->USB
3. Pick the USB device shown from VirtualBox->Preferences->Ports->USB
