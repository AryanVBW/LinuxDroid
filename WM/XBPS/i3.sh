#!/bin/bash
clear
echo "Installing i3wm"
sleep 2
xbps-install -Su -y
xbps-install i3 tigervnc wget nano dbus xorg xterm xfce4-terminal pcmanfm shotwell cairo-dock feh -y
clear

read -p "Want to install default browser ? (y/n)" choice
case "$choice" in 
  y|Y ) xbps-install epiphany -y ;;
  n|N ) echo "Ok... Not epiphany browser";;
  * ) echo "invalid";;
esac

read -p "What to install Firefox browser ? (y/n) [ Chromium might not work on arm/arm32/armhf devices ] " choice
case "$choice" in 
  y|Y ) xbps-install firefox -y ;;
  n|N ) echo "Ok...Not installing Firefox";;
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
dbus-launch i3 &
dbus-launch cairo-dock & 
feh --bg-fill /usr/share/wallpaper.jpg" > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/XBPS/XFCE4/vncserver-start -O /usr/local/bin/vncserver-start
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/XBPS/XFCE4/vncserver-stop -O /usr/local/bin/vncserver-stop
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