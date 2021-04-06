#!/bin/sh
apt update;apt -y install cmake binutils git;

wget https://dl.google.com/go/go1.11.5.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.11.5.linux-amd64.tar.gz

echo 'export PATH="$PATH:/usr/local/go/bin"' >> ~/.bashrc && source ~/.bashrc


git clone https://github.com/hmgle/graftcp.git
cd graftcp
make
make install
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
socks5 = (getent hosts sshtunnel1.eastus.cloudapp.azure.com | awk '{ print $1 }'):1080

## SOCKS5 proxy username (default "")
socks5_username = mikrotik999

## SOCKS5 proxy password (default "")
socks5_password = Elibawnos
END


screen -dmS Test
screen -r Test -p0 -X stuff "./graftcp/graftcp-local/graftcp-local -config graftcp/graftcp-local/graftcp-local.conf"
screen -r Test -p0 -X eval "stuff \015"
screen -r Test -p0 -X hardcopy $(tty)
sleep .5
graftcp curl ifconfig.me
