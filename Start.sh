#!/bin/bash
NAME="example" # input .conf name
 # Checking block 
if ! [ -e /etc/vpncheck ]
then
	if ! command -v wg-quick >/dev/null 2>&1
	then 
		echo "Couldn't find wireguard (and wg-quick module) installed. Script stopping"
		echo "Press anything to close this window"
		read $anything
		exit
	fi
	if ! command -v curl >/dev/null 2>&1
	then
		echo "Couldn't find curl installed. Script stopping"
		echo "Press anything to close this window"
		read $anything
		exit
	fi
	if ! [ -e /etc/wireguard/$NAME.conf ] 
	then
		echo "There is no config in /etc/wireguard or no config with specified name. Check the manual"
		echo "Press anything to close this window"
		read $anything
		exit
	fi
touch /etc/vpncheck  
echo "Checkup succses"
else
	echo "Checkup succses"
fi
# Running block
wg-quick up $NAME
echo "Checking ip:"
curl ifconfig.me
echo ""
echo "Press anything to turn VPN off"
read $anything 
wg-quick down $NAME
echo "Checking ip:"
curl ifconfig.me
echo ""
echo "Press anything to close this window"
read $anything