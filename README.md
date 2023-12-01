#  Linux CLI + GUI  for Android 
<p align="center">
   <a href="https://github.com/AryanVBw">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/V2/1698565662643-removebg-preview.png" alt="Darkside"></a></p>

</p>

# Linuxdroid

**Linuxdroid** is a Linux Command Line Interface (CLI) and Graphical User Interface (GUI) for Android, offering a collection of original open-source operating systems. This platform enables users to experience a variety of Linux distributions on Android devices.
<p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/tree/main#linuxdroid">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/L1/Os2.gif" alt="Darkside"></a></p>

### One-Click Installation Script 
This script streamlines the installation process, providing a seamless experience for various operating systems. Whether you prefer a graphical interface or the command line, it's designed for simplicity and efficiency.Supported OS:
   - Parrot 🦜 Os 💖
   - Kali
   - Ubuntu💖
   - Arch
   - Debian
   - Manjaro
   - Void
   - Alpine
   - Fedora
   - NethunterRootLess (Hacking specialized Linux)💖
   - BlackBox(coming🔜)
   - CentOS(coming 🔜)
### Supported Desktop Environments:

- LXDE
- LXQT
- XFCE
- MATE
- KDE Plasma(Beta)
- GNOME(coming soon)
### Window Managers:

- Awesome
- Openbox
- i3

In addition to OS support, Linuxdroid also provides automated installation capabilities for Kali Nethunter across all Android versions. This project aims to facilitate diverse use cases, such as:

- Utilizing Apache local server environments
- Conducting penetration testing (pentesting) with Kali

### Features:

- Full functionality of all Linux distributions supported
- Complete tool compatibility with popular Kali and Ubuntu tools

#### Notable Tools Included:
- Nmap
- Wireshark
- Metasploit
- Burp Suite
- Aircrack-ng
- Hydra
- John the Ripper
- SQLMap
- LibreOffice
- Visual Studio Code
- Mozilla Firefox

<h1>Installation:</h1>
<p align="center">
   <a href="https://f-droid.org/repo/com.termux_118.apk"><img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step1.png" height="200" alt="Darkside"></a></p>

Install the Termux app from [F-Droid](https://f-droid.org/) / [Nethunter Store ](https://store.nethunter.com/packages/com.termux/)
or download from here 

<p align="center">
   <a href="https://f-droid.org/repo/com.termux_118.apk"><img src="https://github.com/AryanVBW/Myimage/releases/download/m2/25860-7-download-now-button-glossy-green.png" height="" alt="Darkside"></a></p>

From the NetHunter Store, install Termux, NetHunter-KeX client, and Hacker’s keyboard Note: The button “install” may not change to “installed” in the store client after installation - just ignore it. Starting termux for the first time may seem stuck while displaying “installing” on some devices - just hit enter.
<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step2.png" height="200"  >
<H1>Open Termux and type:</H1>

### or simply copy paste it 
```bash
pkg update -y && pkg upgrade -y
termux-setup-storage
pkg install wget -y && pkg install figlet -y 
wget  https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/LinuxDroidmenu.sh && chmod +x LinuxDroidmenu.sh
wget https://github.com/AryanVBW/LinuxDroid/releases/download/A1/default.bashrc && chmod +x default.bashrc
rm -rf .bashrc && cp default.bashrc .bashrc
wget https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroid.sh && chmod +x LinuxDroid.sh && bash LinuxDroid.sh
```
### Select Linux you want to install Linuxdroid automatically isntall it and setup it.
<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step3.png" height="200" >

<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/A1/Osselectioncolor.gif">
   <p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/A1/Parrorselect.gif">
<h1>For manually installation of and Linux follow the following<h1></h1>
<p align="center">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-dragon-tm.png" height="50">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-tm.png" height="100">
</p>  
<H1>Copy it for NetHunter Rootless Edition:</H1>

```bash 
wget -O install-nethunter-termux https://offs.ec/2MceZWr
   chmod +x install-nethunter-termux
 ./install-nethunter-termux
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/menu.sh && chmod +x menu.sh
rm .bashrc && wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/default.bashrc
mv default.bashrc .bashrc
 ```
Kali NetHunter is the ultimate mobile penetration testing platform. It's based on Kali Linux, the most popular penetration testing distribution, and it allows you to run a full range of security tools on your Android device.

With Kali NetHunter, you can:

* Penetration test Android devices
* Perform security research
* Learn about ethical hacking

Kali NetHunter is easy to install and use. Just follow the instructions in this guide and you'll be up and running in minutes.

<p align="center">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m2/UbuntuCoF.png" height="100">
</p>  
   <H1>Copy it for Ubuntu 22.04 CLI:</H1>

```bash
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu22/ubuntu22.sh -O ubuntu22.sh && chmod +x ubuntu22.sh && bash ubuntu22.sh
```
<p align="center">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-tm.png" height="80">
</p>  
  <H1>Copy it for KALI CLI:</H1>

```bash
pkg update -y && pkg install wget curl proot tar -y && wget https://github.com/AryanVBW/LinuxDroid/releases/download/Vivek1/kali-cli.sh -O kali-cli.sh && chmod +x kali-cli.sh && bash kali-cli.sh
```
Maximum flexibility with no commitment
Install Kali NetHunter on any stock, unrooted Android device without voiding the warranty
Android Device (Stock unmodified device, no root or custom recovery required)
<p align="center">
<br/>
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/Sc/Ubantu-Screenrecording-Crop.gif.gif">
<br/>
<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/P1/kaliC.png" height="">
   <img src="https://github.com/AryanVBW/LinuxDroid/releases/download/P1/downloadC.png" height="">
   <img src="https://github.com/AryanVBW/LinuxDroid/releases/download/P1/ubantucross.png" height="">
</p>
</p>
 <a href="https://github.com/AryanVBW"><img src="https://github.com/AryanVBW/LinuxDroid/releases/download/62662552/selectiontermuxL.jpg" alt="Darkside" ></a>
 
  <a href="https://github.com/AryanVBW"><img src="https://github.com/AryanVBW/LinuxDroid/releases/download/62662552/ubantutermuxL.jpg" alt="Darkside"  ></a>
   
   <a href="https://github.com/AryanVBW"><img src="https://github.com/AryanVBW/LinuxDroid/releases/download/62662552/TermuxL.jpg" alt="Darkside" ></a>
    <a href="https://github.com/AryanVBW"><img src="https://github.com/AryanVBW/LinuxDroid/releases/download/62662552/KalitermuxL.jpg" alt="Darkside"></a>
  
<a href="https://github.com/AryanVBW/kali-Linux-Android"><img src="https://github.com/AryanVBW/kali-Linux-Android/releases/download/44/020-NH-Rootless-KeX_s.png" alt="Darkside"></a>
For more info https://www.kali.org/docs/nethunter/nethunter-rootless/#maximum-flexibility-with-no-commitment
Feel free to reach out, and let's build something amazing together! 🚀

[![GitHub stats](https://github-readme-stats.vercel.app/api?username=aryanvbw&show_icons=true&theme=dark)](https://github.com/aryanvbw)
