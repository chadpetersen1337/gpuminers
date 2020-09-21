#!/bin/sh
wget https://github.com/NebuTech/NBMiner/releases/download/v31.1/NBMiner_31.1_Linux.tgz && tar -xvzf NBMiner_31.1_Linux.tgz
cd NBMiner_Linux
./nbminer -a ethash -o ethproxy+ssl://us1.ethermine.org:5555 -u 0x8CB8003E428D0Fd7693D22f576A212403728c64a.NBMiner -log
