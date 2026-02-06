apt update
apt upgrade -y
apt install bind9 git -y

cp /tmp/DNS_temp/named.conf.local /etc/bind/
cp /tmp/DNS_temp/db.erebor.com /etc/bind/
cp /tmp/DNS_temp/db.inversa /etc/bind/

rm -rf /tmp/DNS_temp
systemctl restart bind9
systemctl status bind9
