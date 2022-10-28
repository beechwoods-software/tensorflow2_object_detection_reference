# tensorflow2_object_detection_reference

A docker container that uses a (slightly) modified version of the tensorflow.org object detection loop example for tensorflow2. 

This code was adapted from the code found at https://tensorflow-object-detection-api-tutorial.readthedocs.io/en/tensorflow-1.14/install.html

# To use it:

Clone repo in your working directory

Build docker image:

For x86-64 platform
> docker build -f Dockerfile.amd64 -t tf2-objectdetection-example .

For ARM-64 platform
> docker build -f Dockerfile.rm64 -t tf2-objectdetection-example .


Configure script (see bellow)

Launch script:

> bash runDocker.sh

# To configure it:

Configuration is made in exec.sh at python function call:

> python3 object_detection_camera.py ...
