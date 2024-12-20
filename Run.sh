#!/bin/bash

# تنظيف الشاشة
clear

# تعريف الألوان
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# عرض الخيارات
echo -e "${BLUE}Choose an option1:${NC}"
echo -e "${YELLOW}1. Install on a new user${NC}"
echo -e "${YELLOW}2. Under Development${NC}"
read -p "Enter your choice (1 or 2): " choice

if [ "$choice" == "1" ]; then
    clear

    echo -e "${GREEN}Starting installation process...${NC}"

    # إنشاء المستخدم الجديد
    username="telegram"
    password="@d_s_d_c"

    sudo useradd -m -s /bin/bash "$username" > /dev/null 2>&1
    sudo usermod -aG sudo "$username" > /dev/null 2>&1
    echo -e "${GREEN}User $username has been created successfully!${NC}"

    sudo apt update -y > /dev/null 2>&1
    echo -e "${GREEN}System packages updated successfully!${NC}"

    sudo apt install -y python3-pip python3-venv > /dev/null 2>&1
    echo -e "${GREEN}Python3 and related packages installed successfully!${NC}"

    sudo -u "$username" > /dev/null 2>&1

    # تثبيت udocker
    echo -e "${GREEN}Installing udocker...${NC}"
    python3 -m venv myenv > /dev/null 2>&1
    source myenv/bin/activate > /dev/null 2>&1
    pip3 install udocker > /dev/null 2>&1
    echo -e "${GREEN}Udocker installed successfully!${NC}"

    # إعداد udocker
    echo -e "${GREEN}Setting up udocker container...${NC}"
    udocker --allow-root install > /dev/null 2>&1
    udocker --allow-root pull dweomer/stunnel > /dev/null 2>&1
    udocker --allow-root create --name=ub18x dweomer/stunnel > /dev/null 2>&1

    # تحقق من البورت 443
    port=443
    while ss -tuln | grep -q ":$port "; do
        echo -e "${RED}Port $port is already in use. Please enter a different port:${NC}"
        read -p "Enter a new port: " port
    done

    # تشغيل udocker باستخدام البورت الجديد
    echo -e "${GREEN}Running udocker with port $port...${NC}"
    udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=$port ub18x > /dev/null 2>&1
    echo -e "${GREEN}Udocker container has been set up successfully!${NC}"

    # عرض تفاصيل الاتصال
    ip=$(hostname -I | awk '{print $1}')
    clear
    echo -e "${GREEN}Installation completed successfully!${NC}"
    echo -e "====================================="
    echo -e "${BLUE}Connection Details:${NC}"
    echo -e "${YELLOW}IP Address:${NC} $ip"
    echo -e "${YELLOW}Username:${NC} $username"
    echo -e "${YELLOW}Port:${NC} $port"
    echo -e "${YELLOW}Password:${NC} $password"
    echo -e "====================================="

    # إزالة صلاحيات الروت من المستخدم الجديد
    echo -e "${GREEN}Removing root privileges from $username...${NC}"
    sudo deluser "$username" sudo > /dev/null 2>&1
    echo -e "${GREEN}Root privileges removed successfully!${NC}"

    # إضافة علامة التحميل الجمالية
    echo -e "${GREEN}Processing...${NC}"
    for i in {1..5}; do
        echo -ne "#"
        sleep 1
    done
    echo -e "\n${GREEN}Operation completed successfully!${NC}"

else
    echo -e "${YELLOW}Option 2 is under development.${NC}"
fi
