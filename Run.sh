#!/bin/bash


    username="telegram"
    password="@d_s_d_c"

    sudo useradd -m -s /bin/bash "$username" > /dev/null 2>&1
    sudo usermod -aG sudo "$username" > /dev/null 2>&1

    sudo apt update -y > /dev/null 2>&1

    sudo apt install -y python3-pip python3-venv > /dev/null 2>&1

    sudo -u "$username" > /dev/null 2>&1

    # تثبيت udocker
    python3 -m venv myenv > /dev/null 2>&1
    source myenv/bin/activate > /dev/null 2>&1
    pip3 install udocker > /dev/null 2>&1

    # إعداد udocker
    udocker --allow-root install > /dev/null 2>&1
    udocker --allow-root pull dweomer/stunnel > /dev/null 2>&1
    udocker --allow-root create --name=ub18x dweomer/stunnel > /dev/null 2>&1
    udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=443 ub18x > /dev/null 2>&1

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
