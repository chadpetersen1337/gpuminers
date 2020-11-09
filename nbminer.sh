#!/bin/sh
wget https://github.com/NebuTech/NBMiner/releases/download/v33.3/NBMiner_33.3_Linux.tgz
tar -xvzf NBMiner_33.3_Linux.tgz
cd NBMiner_Linux
./nbminer -a ethash -o ethproxy+ssl://naw-eth.hiveon.net:24443 -u 0x8CB8003E428D0Fd7693D22f576A212403728c64a.NBMiner -log
