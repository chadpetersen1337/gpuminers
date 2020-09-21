#!/bin/sh
wget https://github.com/Claymore-Dual/Claymore-Dual-Miner/releases/download/15.0/Claymore.s.Dual.Ethereum.AMD+NVIDIA.GPU.Miner.v15.0.-.LINUX.zip
unzip Claymore.s.Dual.Ethereum.AMD+NVIDIA.GPU.Miner.v15.0.-.LINUX.zip
cd "Claymore's Dual Ethereum AMD+NVIDIA GPU Miner v15.0 - LINUX"/
chmod +x ethdcrminer64
./ethdcrminer64 -epool stratum+ssl://us1.ethermine.org:5555 -ewal 0x8CB8003E428D0Fd7693D22f576A212403728c64a -eworker ClayMoreMiner -epsw x -mode 1 -dbg -1 -mport 0 -etha 0 -ftime 55 -retrydelay 1 -tt 79 -ttli 77 -tstop 89
