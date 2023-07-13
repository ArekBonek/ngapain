#ngapain dek
clear
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${green}ON${NC}"
else
ressshws="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
IPVPS=$(curl -s ipinfo.io/ip )
ISPVPS=$( curl -s ipinfo.io/org )
#!/bin/bash
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33;1m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
ori='\e[32;1m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
nama=$(curl $db/autosc/izin.db | grep $(cat /root/.myip) | cut -d " " -f 1)
clear
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e "                 • AREK GABUT •                 "
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e ""
echo -e "${yell} Nama${ori}   : $nama "
echo -e "${yell} IP VPS${ori} : $(cat /root/.myip)"
echo -e "${yell} Domain${ori} : $(cat /etc/xray/domain)"
echo -e ""
echo -e "${yell} Ssh${ori}    : STOPPED "
echo -e "${yell} Trojan${ori} : STOPPED "
echo -e "${yell} Vless${ori}  : STOPPED "
echo -e "${yell} Vmess${ori}  : STOPPED "
echo -e ""        
echo -e "${red} VPS Anda Tidak Izinkan ${ori} "
echo -e "${red} Contact Admin Untuk Perizinan ${ori}" | lolcat
echo -e ""
echo -e "${yell} Telegram${ori} : IJIN POLISI?"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e ""
clear        
# Color Validation
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
# VPS Information
#Domain
domain=$(cat /etc/xray/domain)
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# Download
ISP=$(cat /root/.myisp)
CITY=$(cat /root/.mycity)
DATE2=$(date -R | cut -d " " -f -5)
IPVPS=$(cat /root/.myip)
clear 
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e "                 • XLORD VPN PANEL •                 "
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e "\e[33m OS            \e[0m:  "`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`	
echo -e "\e[33m IP            \e[0m:  $IPVPS"	
echo -e "\e[33m ISP           \e[0m:  $ISP"
echo -e "\e[33m CITY          \e[0m:  $CITY"
echo -e "\e[33m DOMAIN        \e[0m:  $domain"	
echo -e "\e[33m DATE & TIME   \e[0m:  $DATE2"	
echo -e "\e[33m UPTIME        \e[0m:  $uptime"	
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e "${NC} NGINX ${NC}: $resngx"" ${NC}  XRAY ${NC}: $resv2r"" ${NC} SSH-WS ${NC}: $ressshws"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e "                 • SCRIPT MENU •                 "
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e " [\e[36m•1\e[0m] SSH Menu"
echo -e " [\e[36m•2\e[0m] Vmess Menu"
echo -e " [\e[36m•3\e[0m] Vless Menu"
echo -e " [\e[36m•4\e[0m] Trojan Menu"
echo -e " [\e[36m•5\e[0m] System Menu"
echo -e ""
echo -e " [\e[36m•x\e[0m] Close Panel"
echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e " \e[33mClient Name   \E[0m: $(cat /root/.nama)"
echo -e " \e[33mScrip Version \E[0m: 5.0"
echo -e " \e[33mScrip Expired \E[0m: Lifetime"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e   ""
read -p " Select menu :  "  opt
echo -e   ""
case $opt in
1) clear ; run_exp ; menu-ssh ;;
2) clear ; run_exp ; menu-vmess ;;
3) clear ; run_exp ; menu-vless ;;
4) clear ; run_exp ; menu-trojan ;;
5) clear ; run_exp ; menu-set ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; funny ;;
esac