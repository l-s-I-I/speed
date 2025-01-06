#!/bin/bash

clear

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
echo -e "\033[1;31m# This script supports PTTO 443 on VPS one-line Command! #\033[0m"
echo -e "\033[1;32m##########################################################\033[0m"
echo ""
echo "-----------------------------------------------------------------------------------"
echo ""
echo -e "\033[1;32m╔════════════════════════════════\033[0m"
echo -e "\033[38;5;28m# CHANNEL URL:- \033[1;34mhttps://t.me/D_S_D_C\033[0m"
echo -e "\033[1;33m# VPS Country:- $COUNTRY_VPS_AND_FLAG \033[0m"
echo -e "\033[1;33m# IP & port:- $IP_ADDRESS 443 \033[0m"
echo -e "\033[1;33m# User:- telegram \033[0m"
echo -e "\033[1;33m# Pass:- d_s_d_c \033[0m"
echo -e "\033[38;5;28m# DEV:- \033[1;34mhttps://t.me/l_s_I_I\033[0m"
echo -e "\033[1;32m╚═════════════════════════════════\033[0m"

# اسم الملف الذي سيحتوي على المخرجات
LOG_FILE="$(pwd)/log.txt"

#------------ Speed Section --------------#

#-------- البيه االافتراضيه --------#
echo -e "\033[1;33m# Command run: sudo apt install -y python3-venv socat \033[0m"
sudo apt install -y python3-venv socat >> $LOG_FILE 2>&1
echo -e "\033[1;33m# Status: Installed python3-venv and socat \033[0m" >> $LOG_FILE

echo -e "\033[1;33m# Command run: python3 -m venv myenv \033[0m"
python3 -m venv myenv >> $LOG_FILE 2>&1
source myenv/bin/activate >> $LOG_FILE 2>&1

#----- تحديث النظاك & تثبيت بايثون والمكاتب ----- #
echo -e "\033[1;33m# Command run: sudo apt update -y \033[0m"
sudo apt update -y >> $LOG_FILE 2>&1
echo -e "\033[1;33m# Status: System packages updated \033[0m" >> $LOG_FILE

echo -e "\033[1;33m# Command run: sudo apt install -y python3-pip \033[0m"
sudo apt install -y python3-pip >> $LOG_FILE 2>&1
echo -e "\033[1;33m# Status: Installed python3-pip \033[0m" >> $LOG_FILE

echo -e "\033[1;33m# Command run: pip3 install udocker \033[0m"
pip3 install udocker >> $LOG_FILE 2>&1
echo -e "\033[1;33m# Status: Installed udocker \033[0m" >> $LOG_FILE

#------ إنشاء مستخدم باسم "telegram" فقط إذا لم يكن موجوداً ----#
if ! id "telegram" &>/dev/null; then
    echo -e "\033[1;33m# Command run: adduser --disabled-password --gecos \"\" telegram \033[0m"
    adduser --disabled-password --gecos "" telegram >> $LOG_FILE 2>&1
    echo -e "\033[1;33m# Status: Created telegram user \033[0m" >> $LOG_FILE
fi

#---- عمل كلمه السر d_s_d_c ----#
echo -e "\033[1;33m# Command run: echo \"telegram:d_s_d_c\" | chpasswd \033[0m"
echo "telegram:d_s_d_c" | chpasswd >> $LOG_FILE 2>&1
echo -e "\033[1;33m# Status: Set password for telegram user \033[0m" >> $LOG_FILE

#-------- أمر تفعيل الحاويه و بورت 443 -------#
echo -e "\033[1;33m# Command run: udocker --allow-root install \033[0m"
udocker --allow-root install >> $LOG_FILE 2>&1
echo -e "\033[1;33m# Status: Installed udocker \033[0m" >> $LOG_FILE

echo -e "\033[1;33m# Command run: udocker --allow-root pull dweomer/stunnel \033[0m"
udocker --allow-root pull dweomer/stunnel >> $LOG_FILE 2>&1
echo -e "\033[1;33m# Status: Pulled stunnel image \033[0m" >> $LOG_FILE

echo -e "\033[1;33m# Command run: udocker --allow-root create --name=ub18x dweomer/stunnel \033[0m"
udocker --allow-root create --name=ub18x dweomer/stunnel >> $LOG_FILE 2>&1
echo -e "\033[1;33m# Status: Created container ub18x \033[0m" >> $LOG_FILE

echo -e "\033[1;33m# Command run: udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=443 ub18x #\033[0m"
OUTPUT=$(udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=443 ub18x >> $LOG_FILE 2>&1 &)

sleep 5

echo -e "\033[1;33m# Status: Docker container running in the background \033[0m" >> $LOG_FILE

#------ أمر إضافي لدعم UDP عبر socat -------#
echo -e "\033[1;33m# Command run: sudo socat UDP-LISTEN:7300,reuseaddr,fork TCP:127.0.0.1:443 \033[0m"
sudo socat UDP-LISTEN:7300,reuseaddr,fork TCP:127.0.0.1:443 >> $LOG_FILE 2>&1 &
echo -e "\033[1;33m# Status: Enabling UDP support on port 7300 via socat \033[0m" >> $LOG_FILE

echo "UDP support enabled via socat on port 7300." >> $LOG_FILE 2>&1

#----End of script-----#
echo -e "\033[1;32mDone √ \033[0m"
exit 0
# by t.me/l_s_I_I
