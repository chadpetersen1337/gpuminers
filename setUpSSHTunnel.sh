#!/bin/sh
#sshpass -p IhatePopUps@1Ozegnos sh -c 'ssh -o StrictHostKeyChecking=no -f -N -A -D 9999 root@144.126.222.244 && sleep .1'
wget https://raw.githubusercontent.com/chadpetersen1337/sshtunnel/main/robert_draughter.pem
chmod 600 robert_draughter.pem
ssh -o StrictHostKeyChecking=no -f -N -A -D 9999 linux1@148.100.79.31 -i robert_draughter.pem && sleep .1
