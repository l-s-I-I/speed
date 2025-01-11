#!/bin/bash

clear


#--------- info Variables ---------#
port="443"
User="telegram"
Pass="d_s_d_c"
Server_Message='<div><span style="color: #ff0000">ㅤ</span><span style="color: #ff0600">ㅤ</span><span style="color: #ff0b00">ㅤ</span><span style="color: #ff1100">ㅤ</span><span style="color: #ff1600">ㅤ</span><span style="color: #ff1c00">ㅤ</span><span style="color: #ff2100">ㅤ</span><span style="color: #ff2700">ㅤ</span><span style="color: #ff2c00">ㅤ</span><span style="color: #ff3200">ㅤ</span><span style="color: #ff3700">ㅤ</span><span style="color: #ff3d00">ㅤ</span><span style="color: #ff4200">˗</span><span style="color: #ff4800">ˏ</span><span style="color: #ff4d00">ˋ</span><span style="color: #ff5300">⚡</span><span style="color: #ff5800">︎</span><span style="color: #ff5e00">ˎ</span><span style="color: #ff6300">ˊ</span><span style="color: #ff6900">˗</span></div><div></div><div><span style="color: #ff6e00">D</span><span style="color: #ff7400">e</span><span style="color: #ff7900">v</span><span style="color: #ff7f00">e</span><span style="color: #ff8500">l</span><span style="color: #ff8a00">o</span><span style="color: #ff9000">p</span><span style="color: #ff9500">e</span><span style="color: #ff9b00">r</span><span style="color: #ffa000"> </span><span style="color: #ffa600">:</span><span style="color: #ffac00"> </span><span style="color: #ffb100"> </span><span style="color: #ffb700">l</span><span style="color: #ffbc00">_</span><span style="color: #ffc200">s</span><span style="color: #ffc700">_</span><span style="color: #ffcd00">I</span><span style="color: #ffd200">_</span><span style="color: #ffd800">I</span><span style="color: #ffde00">.</span><span style="color: #ffe300">t</span><span style="color: #ffe900">.</span><span style="color: #ffee00">m</span><span style="color: #fff400">e</span></div><div></div><div><span style="color: #fff900">C</span><span style="color: #ffff00">H</span><span style="color: #f4ff00">A</span><span style="color: #eaff00">N</span><span style="color: #dfff00">N</span><span style="color: #d5ff00">E</span><span style="color: #caff00">L</span><span style="color: #bfff00"> </span><span style="color: #b5ff00">:</span><span style="color: #aaff00"> </span><span style="color: #9fff00">D</span><span style="color: #95ff00">_</span><span style="color: #8aff00">S</span><span style="color: #80ff00">_</span><span style="color: #75ff00">D</span><span style="color: #6aff00">_</span><span style="color: #60ff00">C</span><span style="color: #55ff00">.</span><span style="color: #4aff00">t</span><span style="color: #40ff00">.</span><span style="color: #35ff00">m</span><span style="color: #2bff00">e</span></div><div></div><div><span style="color: #20ff00">S</span><span style="color: #15ff00">t</span><span style="color: #0bff00">a</span><span style="color: #00ff00">t</span><span style="color: #00ff0b">u</span><span style="color: #00ff16">s</span><span style="color: #00ff21">:</span><span style="color: #00ff2c"> </span><span style="color: #00ff37">s</span><span style="color: #00ff43">u</span><span style="color: #00ff4e">c</span><span style="color: #00ff59">c</span><span style="color: #00ff64">e</span><span style="color: #00ff6f">s</span><span style="color: #00ff7a">s</span></div><div></div><div><span style="color: #00ff85">S</span><span style="color: #00ff90">u</span><span style="color: #00ff9b">p</span><span style="color: #00ffa6">p</span><span style="color: #00ffb1">o</span><span style="color: #00ffbc">r</span><span style="color: #00ffc8">t</span><span style="color: #00ffd3"> </span><span style="color: #00ffde">:</span><span style="color: #00ffe9"> </span><span style="color: #00fff4">U</span><span style="color: #00ffff">D</span><span style="color: #00f4ff">P</span><span style="color: #00e9ff">G</span><span style="color: #00deff">W</span><span style="color: #00d3ff"> </span><span style="color: #00c8ff">/</span><span style="color: #00bcff"> </span><span style="color: #00b1ff">G</span><span style="color: #00a6ff">a</span><span style="color: #009bff">m</span><span style="color: #0090ff">e</span><span style="color: #0085ff"> </span><span style="color: #007aff">&</span><span style="color: #006fff"> </span><span style="color: #0064ff">V</span><span style="color: #0059ff">i</span><span style="color: #004eff">d</span><span style="color: #0043ff">e</span><span style="color: #0037ff">o</span><span style="color: #002cff"> </span><span style="color: #0021ff">c</span><span style="color: #0016ff">a</span><span style="color: #000bff">l</span><span style="color: #0000ff">l</span></div>'
#-------- Get the public IPv4 address and country code -----------#
IP_ADDRESS=$(curl -s https://ipinfo.io/ip)
COUNTRY_CODE=$(curl -s https://ipinfo.io/country)

country_vps_flag() {
    case "$1" in
        "AF") echo "Afghanistan 🇦🇫";;
        "AL") echo "Albania 🇦🇱";;
        "DZ") echo "Algeria 🇩🇿";;
        "AS") echo "American Samoa 🇦🇸";;
        "AD") echo "Andorra 🇦🇩";;
        "AO") echo "Angola 🇦🇴";;
        "AI") echo "Anguilla 🇦🇮";;
        "AG") echo "Antigua and Barbuda 🇦🇬";;
        "AR") echo "Argentina 🇦🇷";;
        "AM") echo "Armenia 🇦🇲";;
        "AW") echo "Aruba 🇦🇼";;
        "AU") echo "Australia 🇦🇺";;
        "AT") echo "Austria 🇦🇹";;
        "AZ") echo "Azerbaijan 🇦🇿";;
        "BS") echo "Bahamas 🇧🇸";;
        "BH") echo "Bahrain 🇧🇭";;
        "BD") echo "Bangladesh 🇧🇩";;
        "BB") echo "Barbados 🇧🇧";;
        "BY") echo "Belarus 🇧🇾";;
        "BE") echo "Belgium 🇧🇪";;
        "BZ") echo "Belize 🇧🇿";;
        "BJ") echo "Benin 🇧🇯";;
        "BT") echo "Bhutan 🇧🇹";;
        "BO") echo "Bolivia 🇧🇴";;
        "BA") echo "Bosnia and Herzegovina 🇧🇦";;
        "BW") echo "Botswana 🇧🇼";;
        "BR") echo "Brazil 🇧🇷";;
        "BN") echo "Brunei 🇧🇳";;
        "BG") echo "Bulgaria 🇧🇬";;
        "BF") echo "Burkina Faso 🇧🇫";;
        "BI") echo "Burundi 🇧🇮";;
        "KH") echo "Cambodia 🇰🇭";;
        "CM") echo "Cameroon 🇨🇲";;
        "CA") echo "Canada 🇨🇦";;
        "CV") echo "Cape Verde 🇨🇻";;
        "KY") echo "Cayman Islands 🇰🇾";;
        "CF") echo "Central African Republic 🇨🇫";;
        "TD") echo "Chad 🇹🇩";;
        "CL") echo "Chile 🇨🇱";;
        "CN") echo "China 🇨🇳";;
        "CO") echo "Colombia 🇨🇴";;
        "KM") echo "Comoros 🇰🇲";;
        "CG") echo "Congo 🇨🇬";;
        "CD") echo "Democratic Republic of the Congo 🇨🇩";;
        "CK") echo "Cook Islands 🇨🇰";;
        "CR") echo "Costa Rica 🇨🇷";;
        "CI") echo "Ivory Coast 🇨🇮";;
        "HR") echo "Croatia 🇭🇷";;
        "CU") echo "Cuba 🇨🇺";;
        "CY") echo "Cyprus 🇨🇾";;
        "CZ") echo "Czech Republic 🇨🇿";;
        "DK") echo "Denmark 🇩🇰";;
        "DJ") echo "Djibouti 🇩🇯";;
        "DM") echo "Dominica 🇩🇲";;
        "DO") echo "Dominican Republic 🇩🇴";;
        "EC") echo "Ecuador 🇪🇨";;
        "EG") echo "Egypt 🇪🇬";;
        "SV") echo "El Salvador 🇸🇻";;
        "GQ") echo "Equatorial Guinea 🇬🇶";;
        "ER") echo "Eritrea 🇪🇷";;
        "EE") echo "Estonia 🇪🇪";;
        "SZ") echo "Eswatini 🇸🇿";;
        "ET") echo "Ethiopia 🇪🇹";;
        "FK") echo "Falkland Islands 🇫🇰";;
        "FO") echo "Faroe Islands 🇫🇴";;
        "FJ") echo "Fiji 🇫🇯";;
        "FI") echo "Finland 🇫🇮";;
        "FR") echo "France 🇫🇷";;
        "GA") echo "Gabon 🇬🇦";;
        "GM") echo "Gambia 🇬🇲";;
        "GE") echo "Georgia 🇬🇪";;
        "DE") echo "Germany 🇩🇪";;
        "GH") echo "Ghana 🇬🇭";;
        "GI") echo "Gibraltar 🇬🇮";;
        "GR") echo "Greece 🇬🇷";;
        "GL") echo "Greenland 🇬🇱";;
        "GD") echo "Grenada 🇬🇩";;
        "GP") echo "Guadeloupe 🇬🇵";;
        "GU") echo "Guam 🇬🇺";;
        "GT") echo "Guatemala 🇬🇹";;
        "GN") echo "Guinea 🇬🇳";;
        "GW") echo "Guinea-Bissau 🇬🇼";;
        "GY") echo "Guyana 🇬🇾";;
        "HT") echo "Haiti 🇭🇹";;
        "HN") echo "Honduras 🇭🇳";;
        "HK") echo "Hong Kong 🇭🇰";;
        "HU") echo "Hungary 🇭🇺";;
        "IS") echo "Iceland 🇮🇸";;
        "IN") echo "India 🇮🇳";;
        "ID") echo "Indonesia 🇮🇩";;
        "IR") echo "Iran 🇮🇷";;
        "IQ") echo "Iraq 🇮🇶";;
        "IE") echo "Ireland 🇮🇪";;
        "IL") echo "Israel 🇮🇱";;
        "IT") echo "Italy 🇮🇹";;
        "JM") echo "Jamaica 🇯🇲";;
        "JP") echo "Japan 🇯🇵";;
        "JO") echo "Jordan 🇯🇴";;
        "KZ") echo "Kazakhstan 🇰🇿";;
        "KE") echo "Kenya 🇰🇪";;
        "KI") echo "Kiribati 🇰🇮";;
        "KP") echo "North Korea 🇰🇵";;
        "KR") echo "South Korea 🇰🇷";;
        "KW") echo "Kuwait 🇰🇼";;
        "KG") echo "Kyrgyzstan 🇰🇬";;
        "LA") echo "Laos 🇱🇦";;
        "LV") echo "Latvia 🇱🇻";;
        "LB") echo "Lebanon 🇱🇧";;
        "LS") echo "Lesotho 🇱🇸";;
        "LR") echo "Liberia 🇱🇷";;
        "LY") echo "Libya 🇱🇾";;
        "LI") echo "Liechtenstein 🇱🇮";;
        "LT") echo "Lithuania 🇱🇹";;
        "LU") echo "Luxembourg 🇱🇺";;
        "MO") echo "Macao 🇲🇴";;
        "MK") echo "North Macedonia 🇲🇰";;
        "MG") echo "Madagascar 🇲🇬";;
        "MW") echo "Malawi 🇲🇼";;
        "MY") echo "Malaysia 🇲🇾";;
        "MV") echo "Maldives 🇲🇻";;
        "ML") echo "Mali 🇲🇱";;
        "MT") echo "Malta 🇲🇹";;
        "MH") echo "Marshall Islands 🇲🇭";;
        "MQ") echo "Martinique 🇲🇶";;
        "MR") echo "Mauritania 🇲🇷";;
        "MU") echo "Mauritius 🇲🇺";;
        "YT") echo "Mayotte 🇾🇹";;
        "MX") echo "Mexico 🇲🇽";;
        "FM") echo "Micronesia 🇫🇲";;
        "MD") echo "Moldova 🇲🇩";;
        "MC") echo "Monaco 🇲🇨";;
        "MN") echo "Mongolia 🇲🇳";;
        "ME") echo "Montenegro 🇲🇪";;
        "MS") echo "Montserrat 🇲🇸";;
        "MA") echo "Morocco 🇲🇦";;
        "MZ") echo "Mozambique 🇲🇿";;
        "MM") echo "Myanmar 🇲🇲";;
        "NA") echo "Namibia 🇳🇦";;
        "NR") echo "Nauru 🇳🇷";;
        "NP") echo "Nepal 🇳🇵";;
        "NL") echo "Netherlands 🇳🇱";;
        "NC") echo "New Caledonia 🇳🇨";;
        "NZ") echo "New Zealand 🇳🇿";;
        "NI") echo "Nicaragua 🇳🇮";;
        "NE") echo "Niger 🇳🇪";;
        "NG") echo "Nigeria 🇳🇬";;
        "NU") echo "Niue 🇳🇺";;
        "NF") echo "Norfolk Island 🇳🇫";;
        "MP") echo "Northern Mariana Islands 🇲🇵";;
        "NO") echo "Norway 🇳🇴";;
        "OM") echo "Oman 🇴🇲";;
        "PK") echo "Pakistan 🇵🇰";;
        "PW") echo "Palau 🇵🇼";;
        "PA") echo "Panama 🇵🇦";;
        "PG") echo "Papua New Guinea 🇵🇬";;
        "PY") echo "Paraguay 🇵🇾";;
        "PE") echo "Peru 🇵🇪";;
        "PH") echo "Philippines 🇵🇭";;
        "PL") echo "Poland 🇵🇱";;
        "PT") echo "Portugal 🇵🇹";;
        "PR") echo "Puerto Rico 🇵🇷";;
        "QA") echo "Qatar 🇶🇦";;
        "RE") echo "Réunion 🇷🇪";;
        "RO") echo "Romania 🇷🇴";;
        "RU") echo "Russia 🇷🇺";;
        "RW") echo "Rwanda 🇷🇼";;
        "BL") echo "Saint Barthélemy 🇧🇱";;
        "SH") echo "Saint Helena 🇸🇭";;
        "KN") echo "Saint Kitts and Nevis 🇰🇳";;
        "LC") echo "Saint Lucia 🇱🇨";;
        "MF") echo "Saint Martin 🇲🇫";;
        "PM") echo "Saint Pierre and Miquelon 🇵🇲";;
        "VC") echo "Saint Vincent and the Grenadines 🇻🇨";;
        "WS") echo "Samoa 🇼🇸";;
        "SM") echo "San Marino 🇸🇲";;
        "ST") echo "São Tomé and Príncipe 🇸🇹";;
        "SA") echo "Saudi Arabia 🇸🇦";;
        "SN") echo "Senegal 🇸🇳";;
        "RS") echo "Serbia 🇷🇸";;
        "SC") echo "Seychelles 🇸🇨";;
        "SL") echo "Sierra Leone 🇸🇱";;
        "SG") echo "Singapore 🇸🇬";;
        "SX") echo "Sint Maarten 🇸🇽";;
        "SK") echo "Slovakia 🇸🇰";;
        "SI") echo "Slovenia 🇸🇮";;
        "SB") echo "Solomon Islands 🇸🇧";;
        "SO") echo "Somalia 🇸🇴";;
        "ZA") echo "South Africa 🇿🇦";;
        "GS") echo "South Georgia and the South Sandwich Islands 🇬🇸";;
        "KR") echo "South Korea 🇰🇷";;
        "ES") echo "Spain 🇪🇸";;
        "LK") echo "Sri Lanka 🇱🇰";;
        "SD") echo "Sudan 🇸🇩";;
        "SR") echo "Suriname 🇸🇷";;
        "SJ") echo "Svalbard and Jan Mayen 🇸🇯";;
        "SE") echo "Sweden 🇸🇪";;
        "CH") echo "Switzerland 🇨🇭";;
        "SY") echo "Syria 🇸🇾";;
        "TW") echo "Taiwan 🇹🇼";;
        "TJ") echo "Tajikistan 🇹🇯";;
        "TZ") echo "Tanzania 🇹🇿";;
        "TH") echo "Thailand 🇹🇭";;
        "TG") echo "Togo 🇹🇬";;
        "TK") echo "Tokelau 🇹🇰";;
        "TO") echo "Tonga 🇹🇴";;
        "TT") echo "Trinidad and Tobago 🇹🇹";;
        "TN") echo "Tunisia 🇹🇳";;
        "TR") echo "Turkey 🇹🇷";;
        "TM") echo "Turkmenistan 🇹🇲";;
        "TC") echo "Turks and Caicos Islands 🇹🇨";;
        "TV") echo "Tuvalu 🇹🇻";;
        "UG") echo "Uganda 🇺🇬";;
        "UA") echo "Ukraine 🇺🇦";;
        "AE") echo "United Arab Emirates 🇦🇪";;
        "GB") echo "United Kingdom 🇬🇧";;
        "US") echo "United States 🇺🇸";;
        "UY") echo "Uruguay 🇺🇾";;
        "UZ") echo "Uzbekistan 🇺🇿";;
        "VU") echo "Vanuatu 🇻🇺";;
        "VE") echo "Venezuela 🇻🇪";;
        "VN") echo "Vietnam 🇻🇳";;
        "WF") echo "Wallis and Futuna 🇼🇫";;
        "EH") echo "Western Sahara 🇪🇭";;
        "YE") echo "Yemen 🇾🇪";;
        "ZM") echo "Zambia 🇿🇲";;
        "ZW") echo "Zimbabwe 🇿🇼";;
        *) echo "Unknown Country 🌍";;
    esac
}

# Get full country name and flag using the country code
COUNTRY_VPS_AND_FLAG=$(country_vps_flag $COUNTRY_CODE)

echo -e "\033[1;32m##########################################################\033[0m"
echo -e "\033[1;31m# This script support port 443 on vps one line Command ! #\033[0m"
echo -e "\033[1;32m##########################################################\033[0m"
echo "-----------------------------------------------------------------------------------"
echo ""
echo -e "\033[1;32mStart √ \033[0m"
echo ""
echo "-----------------------------------------------------------------------------------"

LOG_FILE="$(pwd)/log.txt"


#-------- البيه االافتراضيه --------#
echo -e "\033[1;33m#Command Run ====> sudo apt install -y python3-venv socat \033[0m"
sudo apt install -y python3-venv socat >> $LOG_FILE 2>&1

echo -e "\033[1;33m#Command Run ====> python3 -m venv myenv \033[0m"
python3 -m venv myenv >> $LOG_FILE 2>&1
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
echo -e "\033[1;33m#Command Run ====> install docker & enable & start  \033[0m"
sudo apt install openssh-server >> $LOG_FILE 2>&1
sudo systemctl start ssh >> $LOG_FILE 2>&1
sudo systemctl enable ssh >> $LOG_FILE 2>&1
apt install docker.io -y >> $LOG_FILE 2>&1
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

echo -e "\033[1;33m#Command Run ====> udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=443 ub18x\033[0m"
OUTPUT=$(udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=443 ub18x >> $LOG_FILE 2>&1 &)
OUTPUT=$(udocker --allow-root run -e STUNNEL_SERVICE=ssh1 -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=8080 ub18x >> $LOG_FILE 2>&1 &)

sleep 5

#------ أمر لدعم UDP -------#
echo -e "\033[1;33m#Command Run ====> docker run --name badvpn-udpgw -d -t --restart=always -p 127.0.0.1:7300:7300 \033[0m"
docker run --name badvpn-udpgw -d -t --restart=always -p 127.0.0.1:7300:7300 zlainsama/badvpn-udpgw-docker >> $LOG_FILE 2>&1 &


echo -e "\033[1;33m#Command Run ====> badvpn-udpgw --max-clients 3000 \033[0m"
docker exec -d badvpn-udpgw /bin/sh -c "badvpn-udpgw --max-clients 3000" >> $LOG_FILE 2>&1 &




echo "-----------------------------------------------------------------------------------"
echo ""
echo -e "\033[1;32m========== SSH Account ==========\033[0m"
echo -e "\033[38;5;28m• CHANNEL URL:- \033[1;34mD_S_D_C.T.ME\033[0m"
echo -e "\033[1;33m• VPS Country:- $COUNTRY_VPS_AND_FLAG \033[0m"
echo -e "\033[1;33m• IP Address:- $IP_ADDRESS \033[0m"
echo -e "\033[1;33m• port :- $port \033[0m"
echo -e "\033[1;33m• User:- $User \033[0m"
echo -e "\033[1;33m• Pass:- $Pass \033[0m"
echo -e "\033[1;33m========== Http Custom ===========\033[0m"
echo -e "\033[1;33m$IP_ADDRESS:$port@$User:$Pass —» $(country_vps_flag $COUNTRY_CODE | awk '{print $2}') \033[0m"
echo -e "\033[1;32m==== github.com/l-s-I-I/speed =====\033[0m"
echo ""
echo "-----------------------------------------------------------------------------------"
echo -e "\033[38;5;28m# DEV:- \033[1;34ml_s_I_I.T.ME\033[0m"
echo -e "\033[1;32m# Script V ==> 2.0 √ \033[0m"
echo "-----------------------------------------------------------------------------------"



#----End of script-----#
echo -e "\033[1;32mDone √  \033[0m"
exit 0
# by t.me/l_s_I_I
