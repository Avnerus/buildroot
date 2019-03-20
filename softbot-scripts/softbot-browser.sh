#!/bin/sh
export WEBKIT_INSPECTOR_SERVER=0.0.0.0:1234
export WPE_BCMRPI_CURSOR=1
cog --enable-webaudio=true --enable-mediasource=true --enable-media-stream=true --media-playback-allows-inline=true --enable-media-capabilities=true http://192.168.8.239:3080/avatar
