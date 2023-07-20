#  Linux CLI + GUI  for Android 
<p align="center">
<img src="https://github.com/AryanVBW/kali-Linux-Android/releases/download/1/removebackground.png" height="150"><br>
*LinuxDroid*
</p>

Kali NetHunter is the ultimate mobile penetration testing platform. It's based on Kali Linux, the most popular penetration testing distribution, and it allows you to run a full range of security tools on your Android device.

With Kali NetHunter, you can:

* Penetration test Android devices
* Perform security research
* Learn about ethical hacking

Kali NetHunter is easy to install and use. Just follow the instructions in this guide and you'll be up and running in minutes.




<h1>Installation:</h1>

Install the Termux app from store.nethunter.com 
or download from here 

<p align="center">
   <a href="https://f-droid.org/repo/com.termux_118.apk"><img src="https://github.com/AryanVBW/Myimage/blob/main/LinuxDroid/25860-7-download-now-button-glossy-green.png" height="50" alt="Darkside"></a></p>

From the NetHunter Store, install Termux, NetHunter-KeX client, and Hacker’s keyboard Note: The button “install” may not change to “installed” in the store client after installation - just ignore it. Starting termux for the first time may seem stuck while displaying “installing” on some devices - just hit enter.

<H1>Open Termux and type:</H1>

```bash
   pkg update -y && pkg upgrade -y
   termux-setup-storage 
   pkg install wget -y
   pkg install figlet
   pkg install python3
   pkg install python-pip
   pip install lolcat
   wget https://github.com/AryanVBW/kali-Linux-Android/releases/download/T1/vivek
   wget https://github.com/AryanVBW/kali-Linux-Android/releases/download/T1/default.bashrc
   cp default.bashrc .bashrc
```
<p align="center">
<img src="https://github.com/AryanVBW/Myimage/blob/main/kali/kali-nethunter-dragon-tm.png" height="50">
<img src="https://github.com/AryanVBW/Myimage/blob/main/kali/kali-nethunter-tm.png" height="100">
</p>  
<H1>copy it for NetHunter Rootless Edition:</H1>

```bash 
wget -O install-nethunter-termux https://offs.ec/2MceZWr
   chmod +x install-nethunter-termux
 ./install-nethunter-termux
 ```
<p align="center">
<img src="https://github.com/AryanVBW/Myimage/blob/main/LinuxDroid/UbuntuCoF.png" height="100">

</p>  
   <H1>Copy it for Ubuntu 22.04 CLI:</H1>

```bash
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu22/ubuntu22.sh -O ubuntu22.sh && chmod +x ubuntu22.sh && bash ubuntu22.sh
```
Maximum flexibility with no commitment
Install Kali NetHunter on any stock, unrooted Android device without voiding the warranty
Android Device (Stock unmodified device, no root or custom recovery required)
  <a href="https://github.com/AryanVBW/kali-Linux-Android"><img src="https://github.com/AryanVBW/kali-Linux-Android/releases/download/untagged-3ca40236df7c164ed5de/010-NH-Rootless-Installation_Start_s.png" alt="Darkside"></a>
 <a href="https://github.com/AryanVBW"><img src="https://github.com/AryanVBW/kali-Linux-Android/blob/main/android-for-hacker.jpg" alt="Darkside"></a>

<a href="https://github.com/AryanVBW/kali-Linux-Android"><img src="https://github.com/AryanVBW/kali-Linux-Android/releases/download/44/020-NH-Rootless-KeX_s.png" alt="Darkside"></a>
For more info https://www.kali.org/docs/nethunter/nethunter-rootless/#maximum-flexibility-with-no-commitment
