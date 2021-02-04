#!/bin/sh
apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
apt -y install libpci-dev apt-utils wget nano net-tools htop whiptail dialog sshpass screen > /dev/null
screen -S mine
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/setUpSSHTunnel.sh | bash && sleep .1
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/start_nbEthermMandy.sh | bash
