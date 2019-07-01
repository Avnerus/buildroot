#!/bin/sh
gst-launch-1.0 alsasrc ! queue ! opusenc ! rtpopuspay ! udpsink host=$1 port=8003 rpicamsrc preview=false ! videoconvert ! video/x-raw, framerate=30/1, width=640, height=480 ! vp8enc cpu-used=0 threads=1 end-usage=vbr min-quantizer=1 deadline=1 ! rtpvp8pay ! udpsink host=$1 port=8004 sync=false
