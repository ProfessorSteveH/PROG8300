#!/bin/bash -ex
#

datadir="${1:-$HOME}/prog8300"

if [ -d "$datadir" ] 
then
    echo "Directory ${datadir} exists. continuing." 
else
    mkdir -p "$datadir"
fi

ip route get 8.8.8.8 > /dev/null 2>&1
if [ $? -eq 0 ]
then
	echo "on routable IP network"
	export EXT_IP=$(ip route get 8.8.8.8 | awk -F"src " 'NR==1{split($2,a," ");print a[1]}')
else
	echo "on host-only network, using eth0 device for primary IP"
	export EXT_IP=$(ip route | grep eth0 | awk -F"src " 'NR==1{split($2,a," ");print a[1]}')
fi

export DATADIR=$datadir

docker-compose -f prog8300-compose.yml up -d
