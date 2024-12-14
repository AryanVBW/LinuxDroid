#!/bin/bash

#Get the necessary components
apt update -y
apt install udisks2 -y
echo "" > /var/lib/dpkg/info/udisks2.postinst
dpkg --configure -a
apt install sudo wget nano inetutils-tools dbus-x11 -y
apt install enlightenment -y

mkdir -p ~/.vnc
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/APT/XFCE4/vncserver-start -P /usr/local/bin/
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/APT/XFCE4/vncserver-stop -P /usr/local/bin/
chmod +x /usr/local/bin/vncserver-start
chmod +x /usr/local/bin/vncserver-stop

echo '#!/bin/bash
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
XAUTHORITY=$HOME/.Xauthority
export XAUTHORITY                                                         
dbus-launch --exit-with-session enlightenment_start &' > ~/.vnc/xstartup

apt install epiphany-browser -y 

echo "You can now start vncserver by running vncserver-start"
echo " "
echo "It will ask you to enter a password when first time starting it."
echo " "
echo "The VNC Server will be started at 127.0.0.1:5901"
echo " "
echo "You can connect to this address with a VNC Viewer you prefer"
echo " "
echo "Connect to this address will open a window with Xfce4 Desktop Environment"
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