
#!/bin/bash
# ==================================================

# initialisasi var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";
echo "sudo su" >> .bashrc

# go to root
cd

# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local

# install wget and curl
apt-get update;apt-get -y install wget curl;

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
service ssh restart

# set repo
wget -O /etc/apt/sources.list "https://scrip.000webhostapp.com/DEBIAN-7-8/sources.list.debian8"
wget "https://scrip.000webhostapp.com/DEBIAN-7-8/dotdeb.gpg"
wget "https://scrip.000webhostapp.com/DEBIAN-7-8/jcameron-key.asc"
cat dotdeb.gpg | apt-key add -;rm dotdeb.gpg
cat jcameron-key.asc | apt-key add -;rm jcameron-key.asc

# update
apt-get update

# install webserver
apt-get -y install nginx

# install essential package
apt-get -y install nano iptables dnsutils openvpn screen whois ngrep unzip unrar

# install neofetch
echo "deb http://dl.bintray.com/dawidd6/neofetch jessie main" | sudo tee -a /etc/apt/sources.list
curl -L "https://bintray.com/user/downloadSubjectPublicKey?username=bintray" -o Release-neofetch.key && sudo apt-key add Release-neofetch.key && rm Release-neofetch.key
apt-get update
apt-get install neofetch

echo "clear" >> .bashrc
echo 'echo -e "Welcome to the kguza server $HOSTNAME"' >> .bashrc
echo 'echo -e "Dev By kguza"' >> .bashrc
echo 'echo -e "Open menu to display command list"' >> .bashrc
echo 'echo -e ""' >> .bashrc

# install webserver
cd
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "https://scrip.000webhostapp.com/DEBIAN-7-8/nginx.conf"
mkdir -p /home/vps/public_html

echo <head>  <meta http-equiv="Content-Language" content="th"> 
<meta http-equiv="content-Type" content="text/html; charset=window-874"> 
<meta http-equiv="content-Type" content="text/html; charset=tis-620"> 
<div id="intro">
	<table border="2"  background="#A100FF">
    <center>
     <b>
          <FONT COLOR="#FF0000" size="10">A</FONT>
          <FONT COLOR="#FF9900" size="10">p</FONT>
          <FONT COLOR="#FF0099" size="10">p</FONT>
          <FONT COLOR="#99FF00" size="10">O</FONT>
          <FONT COLOR="#00FF00" size="10">p</FONT>
          <FONT COLOR="#00FF99" size="10">e</FONT>
          <FONT COLOR="#00FFFF" size="10">n</FONT>
          <FONT COLOR="#0099FF" size="10">V</FONT>
          <FONT COLOR="#0000FF" size="10">P</FONT>
          <FONT COLOR="#9900FF" size="10">N</FONT>
          <FONT COLOR="#FFFFFF" size="10">-</FONT>
          <FONT COLOR="#FF00FF" size="10">P</FONT>
          <FONT COLOR="#FF0099" size="10">R</FONT>
          <FONT COLOR="#FF0099" size="10">O</FONT>
     </b>
</center>
<FONT COLOR="#FFFFFF" size="1">-</FONT>
<center>
                <tr>
                        <td>
                                <marquee behavior="alternate">
                                        <img border="0" src="https://scrip.000webhostapp.com/Seller/20171005_130801_rmscr.jpg" height="1000" width="600"></a>
                                        <img border="0" src="https://scrip.000webhostapp.com/Seller/20171005_130827_rmscr.jpg" height="1000" width="600"></a>
                                        <img border="0" src="https://scrip.000webhostapp.com/Seller/20171005_130840_rmscr.jpg" height="1000" width="600"></a>
                                        <img border="0" src="https://scrip.000webhostapp.com/Seller/20171005_130848_rmscr.jpg" height="1000" width="600"></a>
                                        <img border="0" src="https://scrip.000webhostapp.com/Seller/20171005_130855_rmscr.jpg" height="1000" width="600"></a>
                                </marquee>
                        </td>
                </tr>
</center>
</table>
<FONT COLOR="#FFFFFF" size="1">-</FONT><FONT SIZE=30><B>
<li>ดาวน์โหลดแอปSUPERVPN <a href><a href="https://www.mediafire.com/file/ksalmh3887qiltq/SUPERVPN+00.00.03.apk">»คลิก«</FONT></a href></li>
<FONT SIZE=30><B>
<li>สนใจติดต่อสอบถาม <a href><a href="http://line.me/ti/p/Dh6o2a5Ar9">» คลิก «</FONT></a href></li>
<h1><font><font color="#ffffff">~</font></h1>
<FONT SIZE=30><B><U>
<marquee width="50%">บริการเช่า VPN</marquee></FONT></B></U>
<lu>
<h1><li>บริการเช่าVPN ระบบ VPS</li></h1>
<h1><li>ใช้ได้ทั้ง ssh เเละ openvpn</li></h1>
<h1><li>ราคาเพียง 20บาท/เดือน</li></h1>
</ul>
<h1><font><font color="#ffffff">~</font></h1>
<FONT SIZE=30><B><U>
<marquee width="50%">บริการรันScripVPS</marquee></FONT></B></U>
<h1><li>debain 7 - 8</li></h1>
<h1><li>ubuntu 14</li></h1>
<h1><li>ค่าบริการ50฿/1เซิฟเวอร์</li></h1>
<h1>
<FONT COLOR="#FFFFFF" size="3">-</FONT>
<marquee behavior="alternate">
<FONT COLOR="#0099FF" size="10">ขอบ</FONT>
<FONT COLOR="#0000FF" size="10">คุณ</FONT>
<FONT COLOR="#9900FF" size="10">ที่</FONT>
<FONT COLOR="#FF00FF" size="10">สนับ</FONT>
<FONT COLOR="#FF0099" size="10">สนุน</FONT>
<FONT COLOR="#0000FF" size="10">บริ</FONT>
<FONT COLOR="#9900FF" size="10">การ</FONT>
<FONT COLOR="#FF0099" size="10">ของ</FONT>
<FONT COLOR="#0000FF" size="10">เรา</FONT>
<FONT COLOR="#FF0099" size="10">!!!!@KGUZA!!!!</FONT>
</marquee>
</head>
 </div> /home/vps/public_html/kguza.html
wget -O /etc/nginx/conf.d/vps.conf "https://scrip.000webhostapp.com/DEBIAN-7-8/vps.conf"
service nginx restart

# install openvpn
wget -O /etc/openvpn/openvpn.tar "https://scrip.000webhostapp.com/DEBIAN-7-8/openvpn-debian.tar"
cd /etc/openvpn/
tar xf openvpn.tar
wget -O /etc/openvpn/1194.conf "https://scrip.000webhostapp.com/DEBIAN-7-8/1194.conf"
service openvpn restart
sysctl -w net.ipv4.ip_forward=1
sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf
iptables -t nat -I POSTROUTING -s 192.168.100.0/24 -o eth0 -j MASQUERADE
iptables-save > /etc/iptables_yg_baru_dibikin.conf
wget -O /etc/network/if-up.d/iptables "https://scrip.000webhostapp.com/DEBIAN-7-8/iptables"
chmod +x /etc/network/if-up.d/iptables
service openvpn restart

# config openvpn
cd /etc/openvpn/
wget -O /etc/openvpn/True-Dtac.ovpn "https://scrip.000webhostapp.com/DEBIAN-7-8/client-1194.conf"
sed -i $MYIP2 /etc/openvpn/True-Dtac.ovpn;
cp True-Dtac.ovpn /home/vps/public_html/

# install badvpn
cd
wget -O /usr/bin/badvpn-udpgw "https://scrip.000webhostapp.com/DEBIAN-7-8/badvpn-udpgw"
if [ "$OS" == "x86_64" ]; then
  wget -O /usr/bin/badvpn-udpgw "https://scrip.000webhostapp.com/DEBIAN-7-8/badvpn-udpgw64"
fi
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300' /etc/rc.local
chmod +x /usr/bin/badvpn-udpgw
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300

# setting port ssh
cd
sed -i 's/Port 22/Port 22/g' /etc/ssh/sshd_config
sed -i '/Port 22/a Port 143' /etc/ssh/sshd_config
service ssh restart

# install dropbear
apt-get -y install dropbear
sed -i 's/NO_START=1/NO_START=0/g' /etc/default/dropbear
sed -i 's/DROPBEAR_PORT=22/DROPBEAR_PORT=443/g' /etc/default/dropbear
sed -i 's/DROPBEAR_EXTRA_ARGS=/DROPBEAR_EXTRA_ARGS="-p 443 -p 80"/g' /etc/default/dropbear
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
service ssh restart
service dropbear restart

# install squid3
cd
apt-get -y install squid3
wget -O /etc/squid3/squid.conf "https://scrip.000webhostapp.com/DEBIAN-7-8/squid3.conf"
sed -i $MYIP2 /etc/squid3/squid.conf;
service squid3 restart

# install webmin
cd
wget -O webmin-current.deb "https://scrip.000webhostapp.com/DEBIAN-7-8/webmin-current.deb"
dpkg -i --force-all webmin-current.deb;
apt-get -y -f install;
rm /root/webmin-current.deb
service webmin restart

# download script
cd /usr/bin
wget -O menu "https://scrip.000webhostapp.com/DEBIAN-7-8/menu.sh"
wget -O addkguza "https://scrip.000webhostapp.com/DEBIAN-7-8/adduser.sh"
wget -O 2 "https://scrip.000webhostapp.com/DEBIAN-7-8/testuser.sh"
wget -O 3 "https://scrip.000webhostapp.com/DEBIAN-7-8/rename.sh"
wget -O 4 "https://scrip.000webhostapp.com/DEBIAN-7-8/repass.sh"
wget -O 5 "https://scrip.000webhostapp.com/DEBIAN-7-8/delet.sh"
wget -O 6 "https://scrip.000webhostapp.com/DEBIAN-7-8/deletuserxp.sh"
wget -O 7 "https://scrip.000webhostapp.com/DEBIAN-7-8/viewuser.sh"
wget -O 8 "https://scrip.000webhostapp.com/DEBIAN-7-8/restart.sh"
wget -O 9 "https://scrip.000webhostapp.com/DEBIAN-7-8/speedtest.py"
wget -O 10 "https://scrip.000webhostapp.com/DEBIAN-7-8/online.sh"
wget -O 11 "https://scrip.000webhostapp.com/DEBIAN-7-8/viewlogin.sh"
wget -O 12 "https://scrip.000webhostapp.com/DEBIAN-7-8/aboutsystem.sh"
wget -O 13 "https://scrip.000webhostapp.com/DEBIAN-7-8/aboutscrip.sh"

echo "0 0 * * * root /sbin/reboot" > /etc/cron.d/reboot

chmod +x menu
chmod +x addkguza
chmod +x 2
chmod +x 3
chmod +x 4
chmod +x 5
chmod +x 6
chmod +x 7
chmod +x 8
chmod +x 9
chmod +x 10
chmod +x 11
chmod +x 12
chmod +x 13

# finishing
cd
chown -R www-data:www-data /home/vps/public_html
service nginx start
service openvpn restart
service cron restart
service ssh restart
service dropbear restart
service squid3 restart
service webmin restart
rm -rf ~/.bash_history && history -c
echo "Canceled HISTFILE" >> /etc/profile

# info
clear
echo "===========================================" | tee -a log-install.txt
echo "Smile Fighter:" | tee log-install.txt
echo "===========================================" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "Service"  | tee -a log-install.txt
echo "-------"  | tee -a log-install.txt
echo "OpenSSH  : 22, 143"  | tee -a log-install.txt
echo "Dropbear : 80, 443"  | tee -a log-install.txt
echo "Squid3   : 8080, 3128 (limit to IP SSH)"  | tee -a log-install.txt
echo "OpenVPN  : TCP 1194 (client config : http://$MYIP:81/True-DtacProline.ovpn)"  | tee -a log-install.txt
echo "badvpn   : badvpn-udpgw port 7300"  | tee -a log-install.txt
echo "nginx    : 81"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "Script"  | tee -a log-install.txt
echo "------"  | tee -a log-install.txt
echo "Other features"  | tee -a log-install.txt
echo "----------"  | tee -a log-install.txt
echo "Webmin   : http://$MYIP:10000/"  | tee -a log-install.txt
echo "Timezone : Asia/htailand (GMT +7)"  | tee -a log-install.txt
echo "IPv6     : [off]"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "Dev By kguza
AinzSoulSnow
Facebook: no facebook 555
Line: http://line.me/ti/p/Dh6o2a5Ar9"  | tee -a log-install.txt
echo "Auto Setup by kguza wullop onuamit"  | tee -a log-install.txt
echo " "  | tee -a log-install.txt
echo "Kguza Web   : http://$MYIP:81/kguza.html"  | tee -a log-install.txt
echo "Log of installer --> "/root/log-install.txt
echo "Log Instalasi --> /root/log-install.txt"  | tee -a log-install.txt
echo " "  | tee -a log-install.txt
echo "VPS AUTO REBOOT 00.00"  | tee -a log-install.txt
echo " "  | tee -a log-install.txt
echo "»»»»»»»»»»»»»» " 
echo "? prin { menu } show list of menu ?"  | tee -a log-install.txt
echo "»»»»»»»»»»»»»» " 
cd
rm -f /root/kguza-scrip.sh