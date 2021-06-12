#!/bin/sh
apt -y install golang-go git binutils cmake

git clone https://github.com/hmgle/graftcp.git
cd graftcp
make && make install
cd

cat > graftcp/graftcp-local/graftcp-local.conf <<END
listen = :2233

loglevel = 1


socks5 = 3.137.194.46:9999

#socks5_username = mikrotik999

#socks5_password = Elibawnos
END

./graftcp/graftcp-local/graftcp-local -config graftcp/graftcp-local/graftcp-local.conf &

sleep .2
graftcp curl ifconfig.me
