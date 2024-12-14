#!/bin/bash
clear
echo "Installing Openbox"
sleep 2
sudo apt update -y
apt install keyboard-configuration tzdata -y
apt install sudo wget dialog -y
apt install libexo-2-0 -y
sudo apt install openbox obconf tigervnc-standalone-server wget nano dbus-x11 xorg xterm feh xfce4-terminal pcmanfm shotwell cairo-dock tigervnc-common --no-install-recommends -y
clear

read -p "Want to install default browser ? (y/n)" choice
case "$choice" in 
  y|Y ) sudo apt install epiphany-browser -y ;;
  n|N ) echo "Ok... Not epiphany browser";;
  * ) echo "invalid";;
esac

read -p "What to install chromium browser ? (y/n) [ Chromium might not work on arm/arm32/armhf devices ] " choice
case "$choice" in 
  y|Y ) wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/Uninstall/ubchromiumfix.sh && chmod +x ubchromiumfix.sh && ./ubchromiumfix.sh && rm -rf ubchromiumfix.sh ;;
  n|N ) echo "Ok...Not installing Chromium";;
  * ) echo "invalid";;
esac

mkdir -p ~/.vnc

wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/WM/wallpaper.jpg -O /usr/share/wallpaper.jpg
echo "#!/bin/bash
[ -r ~/.Xresources ] && xrdb ~/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:1
XAUTHORITY=~/.Xauthority
export XAUTHORITY
dbus-launch openbox
dbus-launch cairo-dock 
feh --bg-fill /usr/share/wallpaper.jpg" > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/APT/LXDE/vncserver-start -O /usr/local/bin/vncserver-start
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/APT/LXDE/vncserver-stop -O /usr/local/bin/vncserver-stop
chmod +x /usr/local/bin/vncserver-start
chmod +x /usr/local/bin/vncserver-stop


echo "You can now start vncserver by running vncserver-start"
echo ""
echo "It will ask you to enter a password when first time starting it."
echo ""
echo "The VNC Server will be started at 127.0.0.1:5901"
echo ""
echo "You can connect to this address with a VNC Viewer you prefer"
echo ""
echo ""
echo ""
echo "Running vncserver-start"
echo ""
echo ""
echo ""
echo "To Kill VNC Server just run vncserver-stop"
echo ""
echo ""
echo ""

vncpasswd
vncserver-start
