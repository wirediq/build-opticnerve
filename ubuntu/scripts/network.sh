#!/bin/sh

# Disable udev persistent net rules
# rm /etc/udev/rules.d/70-persistent-net.rules
# mkdir /etc/udev/rules.d/70-persistent-net.rules
# rm /lib/udev/rules.d/75-persistent-net-generator.rules
# rm -rf /dev/.udev/ /var/lib/dhcp3/*
# echo "pre-up sleep 2" >> /etc/network/interfaces

# Disable DNS reverse lookup
#echo "UseDNS no" >> /etc/ssh/sshd_config

#sed -i s/ens3/enp1s0/g /etc/network/interfaces
sed -i s/ens./enp1s0/ /etc/netplan/01-netcfg.yaml

#ip a > /tmp/ip-a.out
#ip link set enp1s0 up
#dhclient enp1s0
