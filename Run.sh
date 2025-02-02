#!/bin/bash

clear

#--------- info Variables ---------#
User="telegram"
Pass="d_s_d_c"
Server_Message='<div><span style="color: #ff0000">ㅤ</span><span style="color: #ff0600">ㅤ</span><span style="color: #ff0b00">ㅤ</span><span style="color: #ff1100">ㅤ</span><span style="color: #ff1600">ㅤ</span><span style="color: #ff1c00">ㅤ</span><span style="color: #ff2100">ㅤ</span><span style="color: #ff2700">ㅤ</span><span style="color: #ff2c00">ㅤ</span><span style="color: #ff3200">ㅤ</span><span style="color: #ff3700">ㅤ</span><span style="color: #ff3d00">ㅤ</span><span style="color: #ff4200">˗</span><span style="color: #ff4800">ˏ</span><span style="color: #ff4d00">ˋ</span><span style="color: #ff5300">⚡</span><span style="color: #ff5800">︎</span><span style="color: #ff5e00">ˎ</span><span style="color: #ff6300">ˊ</span><span style="color: #ff6900">˗</span></div><div></div><div><span style="color: #ff6e00">D</span><span style="color: #ff7400">e</span><span style="color: #ff7900">v</span><span style="color: #ff7f00">e</span><span style="color: #ff8500">l</span><span style="color: #ff8a00">o</span><span style="color: #ff9000">p</span><span style="color: #ff9500">e</span><span style="color: #ff9b00">r</span><span style="color: #ffa000"> </span><span style="color: #ffa600">:</span><span style="color: #ffac00"> </span><span style="color: #ffb100"> </span><span style="color: #ffb700">l</span><span style="color: #ffbc00">_</span><span style="color: #ffc200">s</span><span style="color: #ffc700">_</span><span style="color: #ffcd00">I</span><span style="color: #ffd200">_</span><span style="color: #ffd800">I</span><span style="color: #ffde00">.</span><span style="color: #ffe300">t</span><span style="color: #ffe900">.</span><span style="color: #ffee00">m</span><span style="color: #fff400">e</span></div><div></div><div><span style="color: #fff900">C</span><span style="color: #ffff00">H</span><span style="color: #f4ff00">A</span><span style="color: #eaff00">N</span><span style="color: #dfff00">N</span><span style="color: #d5ff00">E</span><span style="color: #caff00">L</span><span style="color: #bfff00"> </span><span style="color: #b5ff00">:</span><span style="color: #aaff00"> </span><span style="color: #9fff00">D</span><span style="color: #95ff00">_</span><span style="color: #8aff00">S</span><span style="color: #80ff00">_</span><span style="color: #75ff00">D</span><span style="color: #6aff00">_</span><span style="color: #60ff00">C</span><span style="color: #55ff00">.</span><span style="color: #4aff00">t</span><span style="color: #40ff00">.</span><span style="color: #35ff00">m</span><span style="color: #2bff00">e</span></div><div></div><div><span style="color: #20ff00">S</span><span style="color: #15ff00">t</span><span style="color: #0bff00">a</span><span style="color: #00ff00">t</span><span style="color: #00ff0b">u</span><span style="color: #00ff16">s</span><span style="color: #00ff21">:</span><span style="color: #00ff2c"> </span><span style="color: #00ff37">s</span><span style="color: #00ff43">u</span><span style="color: #00ff4e">c</span><span style="color: #00ff59">c</span><span style="color: #00ff64">e</span><span style="color: #00ff6f">s</span><span style="color: #00ff7a">s</span></div><div></div><div><span style="color: #00ff85">S</span><span style="color: #00ff90">u</span><span style="color: #00ff9b">p</span><span style="color: #00ffa6">p</span><span style="color: #00ffb1">o</span><span style="color: #00ffbc">r</span><span style="color: #00ffc8">t</span><span style="color: #00ffd3"> </span><span style="color: #00ffde">:</span><span style="color: #00ffe9"> </span><span style="color: #00fff4">U</span><span style="color: #00ffff">D</span><span style="color: #00f4ff">P</span><span style="color: #00e9ff">G</span><span style="color: #00deff">W</span><span style="color: #00d3ff"> </span><span style="color: #00c8ff">/</span><span style="color: #00bcff"> </span><span style="color: #00b1ff">G</span><span style="color: #00a6ff">a</span><span style="color: #009bff">m</span><span style="color: #0090ff">e</span><span style="color: #0085ff"> </span><span style="color: #007aff">&</span><span style="color: #006fff"> </span><span style="color: #0064ff">V</span><span style="color: #0059ff">i</span><span style="color: #004eff">d</span><span style="color: #0043ff">e</span><span style="color: #0037ff">o</span><span style="color: #002cff"> </span><span style="color: #0021ff">c</span><span style="color: #0016ff">a</span><span style="color: #000bff">l</span><span style="color: #0000ff">l</span></div>'

#-------- ports Variables ---------#
port="443"

#-------- Get the public IPv4 address and country code -----------#
IP_ADDRESS=$(curl -s https://ipinfo.io/ip)
COUNTRY_CODE=$(curl -s https://ipinfo.io/country)

#------- import Country --------#
curl -s https://raw.githubusercontent.com/l-s-I-I/speed/refs/heads/main/Country.sh -o Country.sh
source Country.sh

# Get full country name and flag using the country code
COUNTRY_VPS_AND_FLAG=$(country_vps_flag $COUNTRY_CODE)

echo -e "\033[1;32m##########################################################################\033[0m"
echo -e "\033[1;31m#         This script support port 443 on vps one line Command !         #\033[0m"
echo -e "\033[1;32m##########################################################################\033[0m"
echo "--------------------------------------------------------------------------"
echo -e "\033[1;32m                             Start √ \033[0m"
echo "--------------------------------------------------------------------------"

LOG_FILE="$(pwd)/log.txt"


#-------- البيه االافتراضيه --------#
echo -e "\033[1;33m#Command Run ====> sudo apt install -y python3-venv socat \033[0m"
sudo apt install -y python3.12-venv socat >> $LOG_FILE 2>&1

echo -e "\033[1;33m#Command Run ====> python3 -m venv myenv \033[0m"
python3.12 -m venv myenv >> $LOG_FILE 2>&1
source myenv/bin/activate >> $LOG_FILE 2>&1

#----- تحديث النظاك & تثبيت بايثون والمكاتب ----- #
echo -e "\033[1;33m#Command Run ====> sudo apt update -y \033[0m"
sudo apt update -y >> $LOG_FILE 2>&1

echo -e "\033[1;33m#Command Run ====> sudo apt install -y python3-pip \033[0m"
sudo apt install -y python3-pip >> $LOG_FILE 2>&1

echo -e "\033[1;33m#Command Run ====> pip3 install udocker \033[0m"
pip3 install udocker >> $LOG_FILE 2>&1

#------ إنشاء مستخدم باسم "telegram" فقط إذا لم يكن موجوداً ----#
if ! id "$User" &>/dev/null; then
    echo -e "\033[1;33m#Command Run ====> adduser --disabled-password --gecos \"\" $User \033[0m"
    adduser --disabled-password --gecos "" $User >> $LOG_FILE 2>&1
fi

#---- عمل كلمه السر d_s_d_c ----#
echo -e "\033[1;33m#Command Run ====> echo \"$User:$Pass\" | chpasswd \033[0m"
echo "$User:$Pass" | chpasswd >> $LOG_FILE 2>&1

#--------- احتياطي -----------#
echo -e "\033[1;33m#Command Run ====> install go & docker & enable & start > Wait  √ \033[0m"
sudo apt install openssh-server golang-go >> $LOG_FILE 2>&1
sudo apt install golang-go >> $LOG_FILE 2>&1
sudo systemctl start ssh >> $LOG_FILE 2>&1
sudo systemctl enable ssh >> $LOG_FILE 2>&1
systemctl start docker >> $LOG_FILE 2>&1
systemctl enable docker >> $LOG_FILE 2>&1


#-------- إعداد SSH Banner --------#
echo -e "\033[1;33m#Command Run ====> Configuring SSH Banner \033[0m"
BANNER_FILE="/etc/mybanner"
SSH_CONFIG="/etc/ssh/sshd_config"

#------- Create the banner file -------#
echo "$Server_Message" > "$BANNER_FILE"


if ! grep -q "^Banner $BANNER_FILE" $SSH_CONFIG; then
    echo "Banner $BANNER_FILE" >> $SSH_CONFIG
fi

#--------- Restart SSH --------#
echo -e "\033[1;33m#Command Run ====> Restarting SSH service \033[0m"
sudo systemctl restart ssh >> $LOG_FILE 2>&1


#-------- أمر تفعيل الحاويه و بورت 443 -------#
echo -e "\033[1;33m#Command Run ====> udocker --allow-root install \033[0m"
udocker --allow-root install >> $LOG_FILE 2>&1
echo -e "\033[1;33m# Status: Installed udocker \033[0m" >> $LOG_FILE

echo -e "\033[1;33m#Command Run ====> udocker --allow-root pull dweomer/stunnel \033[0m"
udocker --allow-root pull dweomer/stunnel >> $LOG_FILE 2>&1

echo -e "\033[1;33m#Command Run ====> udocker --allow-root create --name=ub18x dweomer/stunnel \033[0m"
udocker --allow-root create --name=ub18x dweomer/stunnel >> $LOG_FILE 2>&1

echo -e "\033[1;33m#Command Run ====> udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=$port,$port1 ub18x\033[0m"
OUTPUT=$(udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=$port ub18x >> $LOG_FILE 2>&1 &)

sleep 5

#------ أمر لدعم UDP -------#
echo -e "\033[1;33m#Command Run ====> cd udpgw/cmd && go build -o server && ./server -port 7300 generate && ./server run \033[0m"

git clone https://github.com/mukswilly/udpgw.git > /dev/null 2>&1  

cd udpgw/cmd 

go build -o server > /dev/null 2>&1 


./server -port 7300 generate > /dev/null 2>&1 

./server run & 

# -------------- احتياطي غير مهم --------------- #
SYSCTL_FILE="/etc/sysctl.conf"
MAX_RMEM=$(cat /proc/sys/net/core/rmem_max)
MAX_WMEM=$(cat /proc/sys/net/core/wmem_max)
MAX_RMEM_DEFAULT=$(cat /proc/sys/net/core/rmem_default)
MAX_WMEM_DEFAULT=$(cat /proc/sys/net/core/wmem_default)

[ "$MAX_RMEM" -lt 26214400 ] && MAX_RMEM=26214400
[ "$MAX_WMEM" -lt 26214400 ] && MAX_WMEM=26214400
[ "$MAX_RMEM_DEFAULT" -lt 26214400 ] && MAX_RMEM_DEFAULT=26214400
[ "$MAX_WMEM_DEFAULT" -lt 26214400 ] && MAX_WMEM_DEFAULT=26214400

echo -e "\n# إعدادات net.core\n" >> "$SYSCTL_FILE" 2>/dev/null
echo "net.core.rmem_max = $MAX_RMEM" >> "$SYSCTL_FILE" 2>/dev/null
echo "net.core.wmem_max = $MAX_WMEM" >> "$SYSCTL_FILE" 2>/dev/null
echo "net.core.rmem_default = $MAX_RMEM_DEFAULT" >> "$SYSCTL_FILE" 2>/dev/null
echo "net.core.wmem_default = $MAX_WMEM_DEFAULT" >> "$SYSCTL_FILE" 2>/dev/null

sysctl -p > /dev/null 2>&1
sysctl net.core.rmem_max > /dev/null 2>&1
sysctl net.core.wmem_max > /dev/null 2>&1
sysctl net.core.rmem_default > /dev/null 2>&1
sysctl net.core.wmem_default > /dev/null 2>&1
#-----------------------------------------------#
echo ""
echo "-----------------------------------------------------------------------------------"
echo ""
echo -e "\033[1;32m========== SSH Account ==========\033[0m"
echo -e "\033[38;5;28m• CHANNEL URL:- \033[1;34mD_S_D_C.T.ME\033[0m"
echo -e "\033[1;33m• VPS Country:- $COUNTRY_VPS_AND_FLAG \033[0m"
echo -e "\033[1;33m• IP Address:- $IP_ADDRESS \033[0m"
echo -e "\033[1;33m• ports :- $port \033[0m"
echo -e "\033[1;33m• User:- $User \033[0m"
echo -e "\033[1;33m• Pass:- $Pass \033[0m"
echo -e "\033[1;33m========== Http Custom ===========\033[0m"
echo -e "\033[1;33m$IP_ADDRESS:$port@$User:$Pass —» $(country_vps_flag $COUNTRY_CODE | awk '{print $2}') \033[0m"
echo -e "\033[1;32m==== github.com/l-s-I-I/speed =====\033[0m"
echo ""
echo "-----------------------------------------------------------------------------------"
echo -e "\033[38;5;28m# DEV:- \033[1;34ml_s_I_I.T.ME\033[0m"
echo -e "\033[1;32m# Script V ==> 5.0 √ \033[0m"
echo "-----------------------------------------------------------------------------------"
rm -rf Country.sh



#----End of script-----#
echo "-----------------------------------------------------------------------------------"
echo -e "\033[1;32m                                  Done √  \033[0m"
echo "-----------------------------------------------------------------------------------"

exit 0
# by t.me/l_s_I_I
