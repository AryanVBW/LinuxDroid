#!/bin/bash
echo "Installing MATE Desktop"
echo " "
echo " "
echo "Updating the system "
echo " "
echo " "
pacman -Suuyy --noconfirm
pacman -S mate  --noconfirm 
pacman -S tigervnc --noconfirm

wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/Pacman/Manjaro/MATE/xstartup   -P ~/.vnc/
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/Pacman/vncserver-start -P /usr/local/bin/
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/Pacman/vncserver-stop -P /usr/local/bin/
chmod +x ~/.vnc/xstartup
chmod +x /usr/local/bin/vncserver-start
chmod +x /usr/local/bin/vncserver-stop

echo " "
echo "You can now start vncserver by running vncserver-start"
echo " "
echo "It will ask you to enter a password when first time starting it."
echo " "
echo "The VNC Server will be started at 127.0.0.1:5901"
echo " "
echo "You can connect to this address with a VNC Viewer you prefer"
echo " "
echo "Connect to this address will open a window with MATE Desktop Environment"
echo " "
echo " "
echo " "
echo "Running vncserver-start"
echo " "
echo " "
echo " "
echo "To Kill VNC Server just run vncserver-stop"
echo " "
echo " "
echo " "

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile
vncserver-start
