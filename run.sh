#! /bin/bash

docker run -it --rm -v $PWD:/data/ rmetzler/rpi-youtube-dl $@
