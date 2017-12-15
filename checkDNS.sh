#!/bin/sh

# DNS Root Server:https://en.wikipedia.org/wiki/Root_name_server

target_server_ip=""
root_server_ip="198.41.0.4 199.9.14.201 192.33.4.12 199.7.91.13
				192.203.230.10 192.5.5.241 192.112.36.4 198.97.190.53
				192.36.148.17 192.58.128.30 193.0.14.129 199.7.83.42
				202.12.27.33"
zh_server_ip="223.5.5.5 223.6.6.6 208.67.222.222 208.67.220.220 
				128.199.248.105 106.186.17.181 199.91.73.222 178.79.131.110"

# check parameter number
if [ "$#" -eq 0 ]; then
	echo "Illegal number of parameters:$#"
	exit
fi


if [ "$2" == "root" ]; then
target_ip=$root_server_ip
else
target_ip=$zh_server_ip
fi

# lookup DNS root server
for ip in $target_ip
do
	nslookup "$1" $ip
done

