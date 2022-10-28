# video_object_detection

A docker based app to detect the presence and position of a box that is manipulated by a robot and generate REST events based on those events.

This code was adapted from the code found at https://tensorflow-object-detection-api-tutorial.readthedocs.io/en/latest/auto_examples/object_detection_camera.html#sphx-glr-auto-examples-object-detection-camera-py

# To use it:

Clone repo in your working directory

Build docker image:

> docker build -t tf2-objectdetection-example .

Configure script (see bellow)

Launch script:

> bash runDockerRpi.sh

# To configure it:

Configuration is made in exec.sh at python function call:

> python3 object_detection_camera.py ...
