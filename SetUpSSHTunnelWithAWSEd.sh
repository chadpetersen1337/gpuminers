#!/bin/sh
sshpass -p Pmataga87465622 sh -c 'ssh -o StrictHostKeyChecking=no -f -N -A -D 9999 root@ec2-3-86-178-232.compute-1.amazonaws.com && sleep .1'
