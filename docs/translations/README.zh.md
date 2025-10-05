## 🌐 可用语言
[🇬🇧 English](README.md) | [🇮🇳 Hindi](docs/translations/README.hi.md) | [🇪🇸 Español](docs/translations/README.es.md) | [🇨🇳 简体中文](docs/translations/README.zh.md)

> 在上方选择你偏好的语言 🌍，以对应语言阅读 README。

# Android 的 Linux 命令行 (CLI) + 图形界面 (GUI)
<p align="center">
   <a href="https://github.com/AryanVBw">
<img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Banner/IMG_20231220_014524-removebg-preview.png" height="250" alt="LinuxDroid"></a></p>

# LinuxDroid

**LinuxDroid** 是面向 Android 的 Linux 命令行界面（CLI）和图形用户界面（GUI），提供一系列开源操作系统。该平台使用户能够在 Android 设备上体验多种 Linux 发行版。
<p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/tree/main#linuxdroid">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/L1/Os2.gif" alt="LinuxDroid"></a></p>

### 一键安装脚本
该脚本简化了安装流程，为多种操作系统提供无缝体验。无论你偏好图形界面还是命令行，该脚本均以简洁与高效为设计目标。

#### 复制一键安装命令
```
curl -sSL https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/1click.install.sh | bash
```

此脚本会将 LinuxDroid 的安装命令复制到你的剪贴板，便于粘贴并执行。

支持的操作系统：
- Parrot 🦜 OS
- Kali
- Ubuntu
- Arch
- Debian
- Manjaro
- Void
- Alpine
- Fedora
- NethunterRootLess（针对黑客/渗透测试优化的 Linux）
- BlackBox（即将推出 🔜）
- CentOS（即将推出 🔜）

### 支持的桌面环境：
- LXDE
- LXQT
- XFCE
- MATE
- KDE Plasma（测试版）
- GNOME（即将支持）

### 🪟 窗口管理器：
- Awesome
- Openbox
- i3

除操作系统支持外，LinuxDroid 还为所有 Android 版本提供 **Kali Nethunter** 的自动安装功能。该项目旨在支持多种使用场景，例如：

- 在本地使用 Apache 搭建服务器环境
- 使用 Kali 进行渗透测试（pentesting）

### 🌟 功能亮点：
- 支持的 Linux 发行版具有完整功能
- 与常用的 Kali 和 Ubuntu 工具完全兼容

#### 内置的主要工具：
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

<h1>安装：</h1>
<p align="center">
   <a href="https://f-droid.org/packages/com.termux/"><img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step1.png" height="200" alt="LinuxDroid"></a></p>

从 [F-Droid](https://f-droid.org/) 或 [NetHunter 商店](https://store.nethunter.com/packages/com.termux/) 安装 Termux 应用，或直接从下方下载：

<p align="center">
   <a href="https://f-droid.org/repo/com.termux_118.apk"><img src="https://github.com/AryanVBW/Myimage/releases/download/m2/25860-7-download-now-button-glossy-green.png" alt="Termux"></a></p>

在 NetHunter 商店中安装 Termux、NetHunter-KeX 客户端和 Hacker’s Keyboard。注意：商店客户端中“install”按钮可能不会变为“installed”，请忽略此现象。在某些设备上首次启动 Termux 时可能会显示“installing”并看似卡住 —— 直接按回车继续。
<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step2.png" height="200"  >
<H1>打开 Termux 并输入：</H1>

### 或直接复制粘贴以下命令：
```bash
pkg update -y && pkg upgrade -y
termux-setup-storage
pkg install wget -y && pkg install figlet -y 
wget https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroidmenu.sh && chmod +x LinuxDroidmenu.sh
wget https://github.com/AryanVBW/LinuxDroid/releases/download/A1/default.bashrc && chmod +x default.bashrc
rm -rf .bashrc && cp default.bashrc .bashrc
wget https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroid.sh && chmod +x LinuxDroid.sh && bash LinuxDroid.sh
```

### 选择你想要安装的 Linux 发行版 — LinuxDroid 会自动为你安装并设置。
<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step3.png" height="200" >

<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/A1/Osselectioncolor.gif">
   <p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/A1/Parrorselect.gif">
<h2>🚨 手动安装与其他说明：</h2>
<p align="center">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-dragon-tm.png" height="50">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-tm.png" height="100">
</p>  
<h4><img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-dragon-tm.png" height="15">针对 NetHunterRootlessEdition 的手动安装命令：</h4>

```bash
wget -O install-nethunter-termux https://offs.ec/2MceZWr
chmod +x install-nethunter-termux
./install-nethunter-termux
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/menu.sh && chmod +x menu.sh
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/default.bashrc
mv default.bashrc .bashrc
```

Kali NetHunter 是一个成熟的移动渗透测试平台，基于 Kali Linux，允许你在 Android 设备上运行完整的安全工具套件。

使用 Kali NetHunter，你可以：

* 在 Android 设备上进行渗透测试
* 开展安全研究
* 学习道德黑客（ethical hacking）

Kali NetHunter 易于安装和使用。按照本指南的说明操作，你将在几分钟内完成设置。

<p align="center">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m2/UbuntuCoF.png" height="100">
</p>  
   <H3><img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/ubuntu-logo.png" height="16">用于 Ubuntu 22.04 CLI 的命令：</H3>

```bash
pkg update -y && pkg install wget curl proot tar -y && wget https://github.com/AryanVBW/LinuxDroid/blob/L2/Scripts/InstallScript/Cli/ubuntu22.sh -O ubuntu22.sh && chmod +x ubuntu22.sh && bash ubuntu22.sh
```
<p align="center">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-tm.png" height="80">
</p>  
  <H2><img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/Kali.png" height="20">用于 KALI CLI 的命令：</H3>

```bash
pkg update -y && pkg install wget curl proot tar -y && wget https://github.com/AryanVBW/LinuxDroid/releases/download/Vivek1/kali-cli.sh -O kali-cli.sh && chmod +x kali-cli.sh && bash kali-cli.sh
```

最大灵活性：在任何不带 Root 的原生 Android 设备上安装 Kali NetHunter，且不会使保修失效。

#📸 截图
## 点击箭头👇
 <p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/blob/L2/LooksN.md">
<img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Arrow/1024arow2.png" height="120" alt="LinuxDroid">
<p align="center"> 
  访客计数<br>
  <img src="https://profile-counter.glitch.me/Aryanvbw/count.svg" />
</p>
<p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/blob/L2/LooksN.md">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/P1/kaliC.png" height="">
      <p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/blob/L2/LooksN.md">
   <p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/blob/L2/LooksN.md">   
   <img src="https://github.com/AryanVBW/LinuxDroid/releases/download/P1/downloadC.png" height="">
 <p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/blob/L2/LooksN.md">  <img src="https://github.com/AryanVBW/LinuxDroid/blob/L2/LooksN.md" height="">
<p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/blob/L2/LooksN.md">
      <img src="https://github.com/AryanVBW/LinuxDroid/releases/download/L1/debian.jpg"></a></p>
<a href="https://github.com/AryanVBW/kali-Linux-Android"><img src="https://github.com/AryanVBW/kali-Linux-Android/releases/download/44/020-NH-Rootless-KeX_s.png" alt="Darkside"></a>
如有任何问题，欢迎联系，一起打造精彩项目！ 🚀

[![GitHub stats](https://github-readme-stats.vercel.app/api?username=aryanvbw&show_icons=true&theme=dark)](https://github.com/aryanvbw)
<p align="center"> 
  访客计数<br>
  <img src="https://profile-counter.glitch.me/Aryanvbw/count.svg" />
</p>
<p align="center">Made with ❤️ By <a href="aryanvbw.github.io">*Vivek W*</a></p>
<p align="center" style="font-size: 8px">v1.1.2</p>
