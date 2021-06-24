#! /bin/sh

sudo sysctl -w net.ipv4.ip_forward=1; exit;

#JFYI to check paramenter run
#sudo sysctl net.ipv4.ip_forward