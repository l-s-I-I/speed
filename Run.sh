#!/bin/bash

# تنظيف الشاشة
clear

# تعريف الألوان
GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color
BOLD='\033[1m'

# عرض الخيارات
echo -e "${BLUE}${BOLD}Choose an option:${NC}"
echo -e "${YELLOW}1. Install on a new user${NC}"
echo -e "${YELLOW}2. Under Development${NC}"
read -p "Enter your choice (1 or 2): " choice

if [ "$choice" == "1" ]; then
    clear

    echo -e "${GREEN}${BOLD}Starting installation process...${NC}"

    # إنشاء المستخدم الجديد
    username="telegram"
    password="@d_s_d_c"

    sudo useradd -m -s /bin/bash "$username" > /dev/null 2>&1
    sudo usermod -aG sudo "$username" > /dev/null 2>&1
    echo -e "${GREEN}${BOLD}User $username has been created successfully!${NC}"

    sudo apt update -y > /dev/null 2>&1
    echo -e "${GREEN}${BOLD}System packages updated successfully!${NC}"

    sudo apt install -y python3-pip python3-venv > /dev/null 2>&1
    echo -e "${GREEN}${BOLD}Python3 and related packages installed successfully!${NC}"

    sudo -u "$username" > /dev/null 2>&1

    # تثبيت udocker
    echo -e "${GREEN}${BOLD}Installing udocker...${NC}"
    python3 -m venv myenv > /dev/null 2>&1
    source myenv/bin/activate > /dev/null 2>&1
    pip3 install udocker > /dev/null 2>&1
    echo -e "${GREEN}${BOLD}Udocker installed successfully!${NC}"

    # إعداد udocker
    echo -e "${GREEN}${BOLD}Setting up udocker container...${NC}"
    udocker --allow-root install > /dev/null 2>&1
    udocker --allow-root pull dweomer/stunnel > /dev/null 2>&1
    udocker --allow-root create --name=ub18x dweomer/stunnel > /dev/null 2>&1
    
    # التحقق من البورت 443 وإذا كان مستخدمًا استخدام البورت 445
    port=443
    if netstat -tuln | grep -q ":443"; then
        echo -e "${RED}${BOLD}Port 443 is already in use. Switching to port 445.${NC}"
        port=445
    fi

    udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=$port ub18x > /dev/null 2>&1
    echo -e "${GREEN}${BOLD}Udocker container has been set up successfully!${NC}"

    # عرض تفاصيل الاتصال
    ip=$(hostname -I | awk '{print $1}')
    clear
    echo -e "${GREEN}${BOLD}Installation completed successfully!${NC}"
    echo -e "====================================="
    echo -e "${BLUE}${BOLD}Connection Details:${NC}"
    echo -e "${YELLOW}${BOLD}IP Address:${NC} $ip"
    echo -e "${YELLOW}${BOLD}Username:${NC} $username"
    echo -e "${YELLOW}${BOLD}Port:${NC} $port"
    echo -e "${YELLOW}${BOLD}Password:${NC} $password"
    echo -e "====================================="

    # إزالة صلاحيات الروت من المستخدم الجديد
    echo -e "${GREEN}${BOLD}Removing root privileges from $username...${NC}"
    sudo deluser "$username" sudo > /dev/null 2>&1
    echo -e "${GREEN}${BOLD}Root privileges removed successfully!${NC}"

else
    echo -e "${YELLOW}${BOLD}Option 2 is under development.${NC}"
fi
