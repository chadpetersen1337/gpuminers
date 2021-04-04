#!/bin/sh
wget https://github.com/nanopool/nanominer/releases/download/v1.13.1/nanominer-linux-1.13.1.tar.gz
tar -xvzf nanominer-linux-1.13.1.tar.gz
cd nanominer-linux-1.13.1
rm config*
cat > config_eth.ini <<END
[Ethash]
wallet = 0x8CB8003E428D0Fd7693D22f576A212403728c64a
rigName = Nano
pool1 = naw-eth.hiveon.net:24443
END

cat > config.ini <<END
[Ethash]
wallet = 0x8CB8003E428D0Fd7693D22f576A212403728c64a
rigName = Nano
pool1 = naw-eth.hiveon.net:24443
END
./nanominer
