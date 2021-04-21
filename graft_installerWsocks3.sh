#!/bin/sh
apt -y install golang-go git binutils cmake

git clone https://github.com/hmgle/graftcp.git
cd graftcp
make && make install
cd

cat > graftcp/graftcp-local/graftcp-local.conf <<END
listen = :2233

## Write logs to file, to stdout if empty
# logfile = graftcp-local.log

## Log level (0-6), 0: debug, 1: info, 2: notice, 3: warn, 4: error,
## 5: critical: 6: fatal
loglevel = 1

## Pipe path for graftcp to send address info (default "/tmp/graftcplocal.fifo")
# pipepath = /tmp/graftcplocal.fifo

## SOCKS5 address (default "127.0.0.1:1080")
socks5 = 45.56.82.90:9999

## SOCKS5 proxy username (default "")
#socks5_username = mikrotik999

## SOCKS5 proxy password (default "")
#socks5_password = Elibawnos
END

./graftcp/graftcp-local/graftcp-local -config graftcp/graftcp-local/graftcp-local.conf &

sleep .2
graftcp curl ifconfig.me
