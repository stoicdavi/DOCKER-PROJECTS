#!/bin/bash
# ping.sh: A simple ping script
echo "Enter the IP address you want to ping:"
read ip
ping -c 3 $ip