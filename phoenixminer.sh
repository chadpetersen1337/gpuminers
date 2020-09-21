#!/bin/sh
wget https://github.com/PhoenixMiner-download/PhoenixMiner/releases/download/5.1c/PhoenixMiner_5.1c_Linux.zip
unzip PhoenixMiner_5.1c_Linux.zip
cd PhoenixMiner_5.1c_Linux
chmod +x PhoenixMiner
./PhoenixMiner -pool ssl://us1.ethermine.org:5555 -wal 0x8CB8003E428D0Fd7693D22f576A212403728c64a -worker phoenixminer -epsw x -mode 1 -log 2 -mport 0 -etha 0 -ftime 55 -retrydelay 1 -tt 79 -tstop 89  -coin eth
