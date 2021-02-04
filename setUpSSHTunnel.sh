#!/bin/sh
wget http://148.100.108.248/quintongibson61.pem
chmod 400 quintongibson61.pem
ssh -i quintongibson61.pem -o StrictHostKeyChecking=no -f -N -A -D 9999 linux1@148.100.108.248
