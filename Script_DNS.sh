#!/bin/bash

apt update && apt install bind9 git -y

git clone https://github.com/FrancescMoragues/DNS.git /tmp/DNS_temp

cp /tmp/DNS_temp/named.conf.local /etc/bind/
cp /tmp/DNS_temp/db.skoda.com /etc/bind/
cp /tmp/DNS_temp/db.10.72.97 /etc/bind/

chown root:bind /etc/bind/named.conf.local /etc/bind/db.skoda.com /etc/bind/db.10.72.97
chmod 644 /etc/bind/named.conf.local /etc/bind/db.skoda.com /etc/bind/db.10.72.97

echo "Comprobando archivos de zona..."
named-checkconf /etc/bind/named.conf.local
named-checkzone skoda.com /etc/bind/db.skoda.com

systemctl restart bind9
systemctl status bind9 --no-pager

rm -rf /tmp/DNS_skoda
