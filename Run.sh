#!/bin/bash

# تنظيف الشاشة
clear

# تعريف الألوان
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# التحقق من بورت 443
check_port() {
    if sudo lsof -i :443 > /dev/null; then
        echo -e "${RED}Port 443 is still in use. Exiting...${NC}"
        exit 1
    else
        echo -e "${GREEN}Port 443 is now free for use.${NC}"
    fi
}

# التحقق من نوع النظام
detect_os() {
    if [[ -f /etc/os-release ]]; then
        . /etc/os-release
        OS=$ID
    else
        echo -e "${RED}Cannot detect OS, exiting.${NC}"
        exit 1
    fi
}

# تثبيت الحزم الأساسية
install_dependencies() {
    if [ "$OS" == "ubuntu" ] || [ "$OS" == "debian" ]; then
        sudo apt update -y
        sudo apt install -y python3-pip python3-venv lsof
    elif [ "$OS" == "centos" ] || [ "$OS" == "rhel" ]; then
        sudo yum update -y
        sudo yum install -y python3-pip python3-venv lsof
    elif [ "$OS" == "fedora" ]; then
        sudo dnf update -y
        sudo dnf install -y python3-pip python3-venv lsof
    elif [ "$OS" == "arch" ]; then
        sudo pacman -Syu --noconfirm
        sudo pacman -S --noconfirm python-pip python-virtualenv lsof
    else
        echo -e "${RED}Unsupported OS. Exiting.${NC}"
        exit 1
    fi
}

# إنشاء المستخدم الجديد
create_user() {
    username="telegram"
    password="@d_s_d_c"
    sudo useradd -m -s /bin/bash "$username" > /dev/null 2>&1
    sudo usermod -aG sudo "$username" > /dev/null 2>&1
    echo -e "${GREEN}User $username has been created successfully!${NC}"
}

# تثبيت udocker
install_udocker() {
    echo -e "${GREEN}Installing udocker...${NC}"
    python3 -m venv myenv > /dev/null 2>&1
    source myenv/bin/activate > /dev/null 2>&1
    pip3 install udocker > /dev/null 2>&1
    echo -e "${GREEN}Udocker installed successfully!${NC}"
}

# إعداد udocker
setup_udocker() {
    echo -e "${GREEN}Setting up udocker container...${NC}"
    udocker --allow-root install > /dev/null 2>&1
    udocker --allow-root pull dweomer/stunnel > /dev/null 2>&1
    udocker --allow-root create --name=ub18x dweomer/stunnel > /dev/null 2>&1
    udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=$port ub18x > /dev/null 2>&1
    echo -e "${GREEN}Udocker container has been set up successfully!${NC}"
}

# عرض تفاصيل الاتصال
show_connection_details() {
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
}

# إزالة صلاحيات الروت من المستخدم الجديد
remove_root_privileges() {
    echo -e "${GREEN}Removing root privileges from $username...${NC}"
    sudo deluser "$username" sudo > /dev/null 2>&1
    echo -e "${GREEN}Root privileges removed successfully!${NC}"
}

# التحقق من حالة البورت وتثبيت الحزم
check_port
detect_os
install_dependencies
create_user
install_udocker
setup_udocker
show_connection_details
remove_root_privileges
