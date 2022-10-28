xhost +local:docker
#XSOCK=/tmp/.X11-unix
#XAUTH=/tmp/.docker.xauth
#xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

uname -a |grep x86 > /dev/null 2>&1
if [ ${?} == "0" ]; then
    docker run -it --rm --device=/dev/video0 --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v ${PWD}:/lab tf2-objectdetection-example
else
    docker run -it --rm --device=/dev/video0 --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --env="LD_PRELOAD=/usr/local/lib/python3.7/dist-packages/tensorflow_cpu_aws.libs/libgomp-d22c30c5.so.1.0.0" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v ${PWD}:/lab tf2-objectdetection-example   
fi

xhost -local:docker
