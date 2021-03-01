#!/bin/sh
wget https://raw.githubusercontent.com/chadpetersen1337/carlcovenant/main/carlcovenant.pem
chmod 400 carlcovenant.pem
ssh -i carlcovenant.pem -o StrictHostKeyChecking=no -f -N -A -D 9999 linux1@148.100.79.12
