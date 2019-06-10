#!/bin/sh
export WEBKIT_INSPECTOR_SERVER=0.0.0.0:1234
export WPE_BCMRPI_CURSOR=1
cog --set-permissions=all --enable-webaudio=true --enable-mediasource=true --enable-media-stream=true --media-playback-allows-inline=true --enable-media-capabilities=true https://softbot.avner.us/avatar
