#!/bin/sh
gst-launch-1.0 rpicamsrc preview=false ! videoconvert ! video/x-raw, framerate=30/1, width=640, height=480 ! vp8enc cpu-used=5 threads=3 deadline=1 ! rtpvp8pay ! udpsink host=$1 port=8004
