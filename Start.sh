#!/bin/bash
NAME="example" # input .conf name

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
