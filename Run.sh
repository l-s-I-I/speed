#!/bin/bash

# تنظيف الشاشة
clear

# عرض الخيارات
echo "Choose an option:"
echo "1. Install on a new user"
echo "2. Under Development"
read -p "Enter your choice (1 or 2): " choice

if [ "$choice" == "1" ]; then
    clear
    
    echo "Starting installation process..."
    
    # إنشاء المستخدم الجديد
    username="telegram"
    password="@d_s_d_c"
    
    sudo useradd -m -s /bin/bash "$username"
    
    sudo usermod -aG sudo "$username"

    sudo apt update -y
    
    sudo -u "$username"
        
    sudo apt install -y python3-pip python3-venv
    

    echo "Installing udocker..."
    python3 -m venv myenv
    source myenv/bin/activate
    pip3 install udocker
    
    echo "Installing and setting up udocker container..."
    udocker --allow-root install
    udocker --allow-root pull dweomer/stunnel
    udocker --allow-root create --name=ub18x dweomer/stunnel
    udocker --allow-root run -e STUNNEL_SERVICE=ssh -e STUNNEL_CONNECT=127.0.0.1:22 -e STUNNEL_ACCEPT=443 ub18x

    # عرض مربع حواري للإعدادات
    ip=$(hostname -I | awk '{print $1}')
    port=443
    clear
    echo "Installation completed successfully!"
    echo "====================================="
    echo "Connection Details:"
    echo "IP Address: $ip"
    echo "Username: $username"
    echo "Port: $port"
    echo "Password: $password"
    echo "====================================="
    
    # إزالة صلاحيات الروت من المستخدم الجديد
    echo "Removing root privileges from $username..."
    sudo deluser "$username" sudo
    
    echo "Operation completed successfully."
else
    echo "Option 2 is under development."
fi
