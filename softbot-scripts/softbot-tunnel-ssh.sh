#!/bin/sh
chmod 400 /etc/ssh/softbot.pem
autossh -M 0 -i /etc/ssh/softbot.pem -R 9522:localhost:22 -N ubuntu@hitodama.online
