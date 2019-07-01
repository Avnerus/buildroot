#!/bin/sh
chmod 400 /etc/ssh/softbot.pem
autossh -M 0 -i /etc/ssh/softbot.pem -R 3012:localhost:3012 -N ubuntu@hitodama.online
