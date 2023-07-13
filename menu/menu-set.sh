#!/bin/bash
#indo-ssh.com
#nuralfiyaku
#FunnyVPN
#procopas
#admin-skc
#Rayzell23

run_back() {
echo ""
read -p "Pres Enter kembali ke HOME : " xlordvpn           
    
}

clear
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e "                 • SYSTEM MENU •                 "
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e ""
echo -e " [\e[36m•1\e[0m] Ganti Domain"
echo -e " [\e[36m•2\e[0m] Speedtest vps"
echo -e " [\e[36m•3\e[0m] Restart All service"
echo -e " [\e[36m•4\e[0m] Cek Bandiwth"
echo -e " [\e[36m•5\e[0m] Generate cert ssl"
echo -e ""
echo -e " [\e[36m•x\e[0m] Back to Menu"
echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | lolcat
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; addhost ; run_back ;;
2) clear ; speedtest ; run_back ;;
3) clear ; restart ; run_back ;;
4) clear ; vnstat -d ; run_back ;;
5) clear ; certxray ; run_back ;;
x) funny ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; m-system ;;
esac