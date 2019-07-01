#!/bin/sh
ssh -K 30 -I 10000 -i /etc/ssh/softbot.dbk -R 3012:localhost:3012 -N ubuntu@hitodama.online
