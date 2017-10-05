#!/bin/bash
echo "-------------------------------"
clear
# Script multiple login ssh user dropbear, webmin, squid3, openvpn, openssh
# Dev by kguza

read -p "Username : " Login
read -p "Password : " Passwd
read -p "Expired (Day): " TimeActive
read -p "MaxMultiple (User Device): " Maxmulti

IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$TimeActive days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Passwd\n$Passwd\n"|passwd $Login &> /dev/null
echo "hard maxsyslogins $Maxmulti" >> /etc/security/limits.conf
echo "AllowUsers $Login" >> /etc/security/limits.conf
echo "MaxSessions $Maxmulti" >> /etc/security/limits.conf
echo "* hard maxsyslogins $Maxmulti" >> /etc/security/limits.conf
echo -e ""
echo -e "====Detail SSH Account===="
echo -e "Host: $IP" 
echo -e "Port OpenSSH: 22,143"
echo -e "Port Dropbear: 80,443"
echo -e "Port Squid: 8080,3128"
echo -e ""
echo -e "====Detail OpenVPN Account===="
echo -e "Config OpenVPN (TCP 1194)"
echo -e "http://$IP:81/True-Dtac.ovpn"
echo -e ""
echo -e "=======User & Password======="
echo -e "Username: $Login "
echo -e "Password: $Passwd"
echo -e "Out of date : $exp"
echo -e "Max Multiple User Login : $Maxmulti"
echo -e "============================="
echo -e "http://line.me/ti/p/Dh6o2a5Ar9"
echo -e ""