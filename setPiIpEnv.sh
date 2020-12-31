#!bin/bash

V_PI_IP=$(sudo arp-scan -I wlan0 -l | grep -oP '^[\d.]+.*Rasp' | awk '{print $1}')

export PI_IP=$V_PI_IP

echo $PI_IP
