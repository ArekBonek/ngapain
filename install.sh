#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
clear
apt install wget -y
apt install curl -y
apt install ruby -y
gem install lolcat -y
# // Exporting Language to UTF-8
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
BIRed='\033[1;91m'
red='\e[1;31m'
bo='\e[1m'
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
# // Export Banner Status Information
export EROR="[${RED} ERROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"
# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"
clear
localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
mkdir -p /etc/xray
echo -e "${tyblue} Welcome To XlordVpn AutoScript......${NC} "
sleep 2
echo -e "[ ${green}INFO${NC} ] Preparing the install file"
apt install git curl -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] installation file is ready"
sleep 2
sleep 3
# // cek old script
if [[ -r /etc/xray/domain ]]; then
clear
echo -e "${INFO} Having Script Detected !"
echo -e "${INFO} If You Replacing Script, All Client Data On This VPS Will Be Cleanup !"
read -p "Are You Sure Wanna Replace Script ? (Y/N) " josdong
if [[ $josdong == "Y" ]]; then
clear
echo -e "${INFO} Starting Replacing Script !"
elif [[ $josdong == "y" ]]; then
clear
echo -e "${INFO} Starting Replacing Script !"
rm -rf /var/lib/scrz-prem 
elif [[ $josdong == "N" ]]; then
echo -e "${INFO} Action Canceled !"
exit 1
elif [[ $josdong == "n" ]]; then
echo -e "${INFO} Action Canceled !"
exit 1
else
echo -e "${EROR} Your Input Is Wrong !"
exit 1
fi
clear
fi
echo -e "${GREEN}Starting Installation............${NC}"
# // Go To Root Directory
cd /root/
# // Remove
apt-get remove --purge nginx* -y
apt-get remove --purge nginx-common* -y
apt-get remove --purge nginx-full* -y
apt-get remove --purge dropbear* -y
apt-get remove --purge stunnel4* -y
apt-get remove --purge apache2* -y
apt-get remove --purge ufw* -y
apt-get remove --purge firewalld* -y
apt-get remove --purge exim4* -y
apt autoremove -y

# // Update
apt update -y

# // Install Requirement Tools
apt-get --reinstall --fix-missing install -y sudo dpkg psmisc socat jq ruby wondershaper python2 tmux nmap bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget vim net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential gcc g++ automake make autoconf perl m4 dos2unix dropbear libreadline-dev zlib1g-dev libssl-dev dirmngr libxml-parser-perl neofetch git lsof iptables iptables-persistent
apt-get --reinstall --fix-missing install -y libreadline-dev zlib1g-dev libssl-dev python2 screen curl jq bzip2 gzip coreutils rsyslog iftop htop zip unzip net-tools sed gnupg gnupg1 bc sudo apt-transport-https build-essential dirmngr libxml-parser-perl neofetch screenfetch git lsof openssl easy-rsa fail2ban tmux vnstat dropbear libsqlite3-dev socat cron bash-completion ntpdate xz-utils sudo apt-transport-https gnupg2 gnupg1 dnsutils lsb-release chrony
gem install lolcat

# // Update & Upgrade
apt update -y
apt upgrade -y
apt dist-upgrade -y

# // Clear
clear
# // Reading Your Input
read -p "Input Your Domain : " domain
read -p "Input Your Name : " nama
# // Folder Sistem Yang Tidak Boleh Di Hapus
mkdir -p /usr/bin
mkdir -p /etc/nginx
mkdir -p /usr/bin/xray
mkdir -p /etc/xray
mkdir -p /usr/local/etc/xray
mkdir -p /etc/limit/vmess
mkdir -p /etc/limit/trojan
mkdir -p /etc/limit/vless

# // Input Domain TO VPS
echo "$domain" > /etc/xray/domain
echo "$nama" > /root/.nama
#SETUP ALL INFORMATION
curl ipinfo.io/org > /root/.isp
curl ipinfo.io/city > /root/.city
curl ipinfo.io/org > /root/.myisp
curl ipinfo.io/city > /root/.mycity
curl ifconfig.me > /root/.ip
curl ipinfo.io/region > /root/.region
curl ifconfig.me > /root/.myip
clear
# // Making Certificate
clear
echo -e "[ ${GREEN}INFO${NC} ] Starting renew cert... " 
sleep 2
echo -e "${OKEY} Starting Generating Certificate"
rm -fr /root/.acme.sh
mkdir -p /root/.acme.sh
curl https://acme-install.netlify.app/acme.sh -o /root/.acme.sh/acme.sh
chmod +x /root/.acme.sh/acme.sh
/root/.acme.sh/acme.sh --upgrade
/root/.acme.sh/acme.sh --upgrade --auto-upgrade
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
# // Success
echo -e "${OKEY} Your Domain : $domain"
sleep 2
#install ssh-vpn
echo -e "┌─────────────────────────────────────────┐"
echo -e " \E[41;1;39m          >>> Install SSH / WS <<<        \E[0m$NC"
echo -e "└─────────────────────────────────────────┘"
sleep 1
wget -q https://raw.githubusercontent.com/FunnyVPN/sc/main/tools/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
sleep 1
wget -q https://raw.githubusercontent.com/ArekBonek/ngapain/main/limit/limit.sh && chmod +x limit.sh && ./limit.sh
#install ins-xray
echo -e "┌─────────────────────────────────────────┐"
echo -e " \E[41;1;39m            >>> Install Xray <<<         \E[0m$NC"
echo -e "└─────────────────────────────────────────┘"
sleep 1 
wget -q https://raw.githubusercontent.com/FunnyVPN/sc/main/tools/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
# // Download Data
echo -e "${GREEN}Download Data${NC}"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/FunnyVPN/sc/main/usernew.sh"
wget -q -O /usr/bin/add-ws "https://raw.githubusercontent.com/FunnyVPN/sc/main/add-ws.sh"
wget -q -O /usr/bin/add-ssws "https://raw.githubusercontent.com/FunnyVPN/sc/main/add-ssws.sh"
wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/FunnyVPN/sc/main/add-vless.sh"
wget -q -O /usr/bin/add-tr "https://raw.githubusercontent.com/FunnyVPN/sc/main/add-tr.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/FunnyVPN/sc/main/options/restart.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/FunnyVPN/sc/main/options/tendang.sh"
wget -q -O /usr/bin/speedtest "https://raw.githubusercontent.com/FunnyVPN/sc/main/tools/speedtest_cli.py"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/FunnyVPN/sc/main/menu/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/FunnyVPN/sc/main/menu/menu-vmess.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/FunnyVPN/sc/main/menu/menu-trojan.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/FunnyVPN/sc/main/menu/menu-ssh.sh"
wget -q -O /usr/bin/funny "https://raw.githubusercontent.com/FunnyVPN/sc/main/menu/menu.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/FunnyVPN/sc/main/xp.sh"
wget -q -O /usr/bin/addhost "https://raw.githubusercontent.com/FunnyVPN/sc/main/menu/addhost.sh"
wget -q -O /usr/bin/certxray "https://raw.githubusercontent.com/FunnyVPN/sc/main/menu/crt.sh"
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/FunnyVPN/sc/main/menu/menu-set.sh"
chmod +x /usr/bin/usernew
chmod +x /usr/bin/add-ws
chmod +x /usr/bin/add-ssws
chmod +x /usr/bin/add-vless
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/running
chmod +x /usr/bin/speedtest
chmod +x /usr/bin/cek-bandwidth
chmod +x /usr/bin/limitspeed
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-ss
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/menu
chmod +x /usr/bin/webmin
chmod +x /usr/bin/xp
chmod +x /usr/bin/update
chmod +x /usr/bin/addhost
chmod +x /usr/bin/certxray
chmod +x /usr/bin/menu-set
chmod +x /usr/bin/info
chmod +x /usr/bin/infoserv

#cat > /etc/cron.d/re_otm <<-END
#SHELL=/bin/sh
#PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
#0 7 * * * root /sbin/reboot
#END

cat > /etc/cron.d/xp_otm <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
2 0 * * * root /usr/bin/xp
END

cat > /etc/cron.d/cl_otm <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
2 1 * * * root /usr/bin/clearlog
END

cat > /home/re_otm <<-END
7
END

service cron restart >/dev/null 2>&1
service cron reload >/dev/null 2>&1

clear
cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.
if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi
mesg n || true
clear
menu
END
chmod 644 /root/.profile
curl -sS ifconfig.me > /etc/myipvps
rm -fr /root/limit
rm -fr /root/weleh.sh 
rm -fr /root/arzsource.sh 
rm -fr /root/ssh-vpn.sh
rm -fr /root/ins-xray.sh
rm -fr /root/setup.sh
rm -fr /root/domain
history -c

echo -ne "[ ${yell}WARNING${NC} ] Apakah Anda Ingin Reboot Sekarang ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
reboot
fi
