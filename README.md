# Linux CLI + GUI for Android

<p align="center">
   <a href="https://github.com/AryanVBw">
      <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Banner/IMG_20231220_014524-removebg-preview.png" height="250" alt="LinuxDroid">
   </a>
</p>

---

## 🌐 **LinuxDroid: Your Gateway to Linux on Android**

### **Experience Linux Anywhere, Anytime!**

**LinuxDroid** transforms your Android device into a versatile Linux machine, offering both CLI and GUI support. It's the ultimate tool for developers, pentesters, and enthusiasts to unleash the power of Linux on the go.

<p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/tree/main#linuxdroid">
      <img src="https://github.com/AryanVBW/LinuxDroid/releases/download/L1/Os2.gif" alt="LinuxDroid" height="300">
   </a>
</p>

---

## 🚀 **One-Click Installation Script**

### **Get Started in Seconds!**
Say goodbye to complex installations. With our one-click script, you can have your preferred Linux distribution up and running in no time.

### **Quick Start Command:**
```bash
curl -sSL https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/1click.install.sh | bash
```

---

## 🛡️ **Supported Operating Systems**

### **Choose Your Favorite Distribution:**
| Distribution         | Icon                                                                 |
|----------------------|----------------------------------------------------------------------|
| Parrot OS 🦜         | <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/Parrot.png" height="18">  |
| Kali                | <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/Kali.png" height="18">    |
| Ubuntu              | <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/ubuntu-logo.png" height="18"> |
| Arch                | <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/archBg.png" height="18">    |
| Debian              | <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/debiBg.png" height="18">    |
| Manjaro             | <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/d90e746a72ab1fd0d3e9638477e456ab4b4767cd.png" height="18"> |
| Void                | <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/void.png" height="18">     |
| Alpine              | <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/alpineBg.png" height="18">   |
| Fedora              | <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/Fedorabg.png" height="18">   |
| NethunterRootLess   | <img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-dragon-tm.png" height="18">   |
| **Coming Soon**     | BlackBox, CentOS                                                     |

---

## 💻 **Desktop Environments & Window Managers**

### **Make Linux Your Own:**
- **Desktop Environments:** LXDE, LXQT, XFCE, MATE, KDE Plasma (Beta), GNOME (Coming Soon)
- **Window Managers:** Awesome, Openbox, i3

---

## 🌟 **Features**

### **Why LinuxDroid?**
- **Seamless Linux Experience:** Install and manage multiple distributions effortlessly.
- **GUI and CLI Flexibility:** Switch between graphical and command-line interfaces.
- **Ideal for Developers & Pentesters:** Preloaded with tools for coding, security, and more.

### **Pre-Installed Tools:**
| Category              | Tools                                                                 |
|-----------------------|----------------------------------------------------------------------|
| Penetration Testing   | Nmap, Wireshark, Metasploit, Hydra, Aircrack-ng                     |
| Web Security          | Burp Suite, SQLMap                                                 |
| Productivity          | LibreOffice, Visual Studio Code                                    |
| Browsers              | Mozilla Firefox                                                   |

---

## 🛠 **Installation Guide**

### **Follow These Simple Steps:**


1. **Install Termux:** Download Termux from [F-Droid](https://f-droid.org/) or the [NetHunter Store](https://store.nethunter.com/packages/com.termux/).
<p align="center">
   <a href="https://f-droid.org/repo/com.termux_118.apk">
      <img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step1.png" height="200" alt="Download Termux">
   </a>
</p>
2. **Install Supporting Apps:** Get NetHunter-KeX client and Hacker’s Keyboard. <p align="center"><img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step2.png" height="200"  >
     

3. **Initial Setup:** Open Termux and run these commands:
```bash
pkg update -y && pkg upgrade -y
termux-setup-storage
pkg install wget -y && pkg install figlet -y
wget https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroidmenu.sh && chmod +x LinuxDroidmenu.sh
wget https://github.com/AryanVBW/LinuxDroid/releases/download/A1/default.bashrc && chmod +x default.bashrc
rm -rf .bashrc && cp default.bashrc .bashrc
wget https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroid.sh && chmod +x LinuxDroid.sh && bash LinuxDroid.sh
```
### Select Linux you want to install Linuxdroid automatically isntall it and setup it.
<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step3.png" height="200" >

<p align="center">
<!-- <img src="https://github.com/AryanVBW/LinuxDroid/releases/download/A1/Osselectioncolor.gif"> -->
   <p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/A1/Parrorselect.gif">
<h2>🚨For manually installation of and Linux follow the following<h2>
<p align="center">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-dragon-tm.png" height="50">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-tm.png" height="100">
</p>  
<h4><img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-dragon-tm.png" height="15">Copy it forNetHunterRootlessEdition:</h4>

```bash

wget -O install-nethunter-termux https://offs.ec/2MceZWr
   chmod +x install-nethunter-termux
 ./install-nethunter-termux
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/menu.sh && chmod +x menu.sh
 wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/default.bashrc
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
   <H3><img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/ubuntu-logo.png" height="16">Copy it for Ubuntu 22.04 CLI:</H3>

```bash
 pkg update -y && pkg install wget   curl proot tar -y && wget https://github.com/AryanVBW/LinuxDroid/blob/L2/Scripts/InstallScript/Cli/ubuntu22.sh -O ubuntu22.sh && chmod +x ubuntu22.sh && bash ubuntu22.sh
```

---

## 📸 **Screenshots & Visual Guides**

### **See LinuxDroid in Action:**
[Click here for more visuals](https://github.com/AryanVBW/LinuxDroid/blob/L2/LooksN.md).

<p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/blob/L2/LooksN.md">
      <img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Arrow/1024arow2.png" height="120" alt="Arrow">
   </a>
</p>

---

<p align="center"> 
  <strong>Visitor Count:</strong><br>
  <img src="https://profile-counter.glitch.me/Aryanvbw/count.svg" />
</p>

<p align="center">Made with ❤️ by <a href="aryanvbw.github.io">Vivek W</a></p>

<p align="center" style="font-size: 8px">v1.1.2</p>
