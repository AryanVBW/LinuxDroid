## 🌐 उपलब्ध भाषाएँ
[🇬🇧 English](../../README.md) | [🇮🇳 हिन्दी](README.hi.md) | [🇪🇸 Español](README.es.md) | [🇨🇳 中文（简体）](README.zh.md)

> ऊपर अपना पसंदीदा भाषा चुनें 🌍 ताकि README को उसी भाषा में पढा जा सके।

# Android के लिए Linux CLI + GUI
<p align="center">
   <a href="https://github.com/AryanVBw">
<img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Banner/IMG_20231220_014524-removebg-preview.png" height="250" alt="LinuxDroid"></a></p>

# LinuxDroid

**LinuxDroid** Android के लिए एक Linux कमांड लाइन इंटरफ़ेस (CLI) और ग्राफिकल यूज़र इंटरफ़ेस (GUI) है, जो कई ओपन-सोर्स ऑपरेटिंग सिस्टम्स का संग्रह प्रदान करता है। यह प्लेटफ़ॉर्म उपयोगकर्ताओं को अपने Android डिवाइस पर विभिन्न Linux वितरण अनुभव करने में सक्षम बनाता है।
<p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/tree/main#linuxdroid">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/L1/Os2.gif" alt="LinuxDroid"></a></p>

### एक-क्लिक इंस्टॉलेशन स्क्रिप्ट
यह स्क्रिप्ट इंस्टॉलेशन प्रक्रिया को सरल बनाती है और कई OS के लिए सहज अनुभव प्रोवाइड करती है। चाहे आप GUI पसंद करें या कमांड लाइन, यह सरलता और दक्षता के लिये डिज़ाइन किया गया है।

#### इंस्टॉलेशन कमांड (कॉपी करें)
```
curl -sSL https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/1click.install.sh | bash
```

यह स्क्रिप्ट LinuxDroid के इंस्टॉलेशन कमांड को आपके क्लिपबोर्ड में कॉपी करने में मदद करती है, ताकि आप आसानी से उसे पेस्ट कर के चला सकें।

समर्थित OS:
- Parrot 🦜 OS
- Kali
- Ubuntu
- Arch
- Debian
- Manjaro
- Void
- Alpine
- Fedora
- NethunterRootLess (हैकिंग-विशेषीकृत Linux)
- BlackBox (जल्द आ रहा है 🔜)
- CentOS (जल्द आ रहा है 🔜)

### समर्थित डेस्कटॉप परिवेश:
- LXDE
- LXQT
- XFCE
- MATE
- KDE Plasma (बीटा)
- GNOME (जल्द)

### 🪟 विंडो मैनेजर:
- Awesome
- Openbox
- i3

LinuxDroid विभिन्न OS सपोर्ट के अलावा सभी Android वर्ज़न के लिए **Kali Nethunter** की स्वचालित इंस्टॉलेशन क्षमताएँ भी प्रदान करता है। यह प्रोजेक्ट कई उपयोग मामलों को सरल बनाता है, जैसे:

- लोकल Apache सर्वर एनवायरनमेंट का उपयोग
- Kali के साथ पेन-टेस्टिंग (penetration testing)

### 🌟 विशेषताएँ:
- सभी समर्थित Linux वितरणों की पूरी कार्यक्षमता
- लोकप्रिय Kali और Ubuntu टूल्स के साथ पूर्ण अनुकूलता

#### शामिल प्रमुख टूल्स:
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

<h1>इंस्टॉलेशन:</h1>
<p align="center">
   <a href="https://f-droid.org/packages/com.termux/"><img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step1.png" height="200" alt="LinuxDroid"></a></p>

Termux ऐप को [F-Droid](https://f-droid.org/) या [Nethunter Store](https://store.nethunter.com/packages/com.termux/) से इंस्टॉल करें।

या इसे सीधे यहाँ से डाउनलोड करें:

<p align="center">
   <a href="https://f-droid.org/repo/com.termux_118.apk"><img src="https://github.com/AryanVBW/Myimage/releases/download/m2/25860-7-download-now-button-glossy-green.png" alt="Termux"></a></p>

NetHunter स्टोर से Termux, NetHunter-KeX क्लाइंट और Hacker’s Keyboard इंस्टॉल करें। नोट: स्टोर क्लाइंट में "install" बटन "installed" नहीं दिखा सकता—इससे परेशान न हों। कुछ डिवाइसेज़ पर पहली बार Termux खोलने पर यह "installing" दिखा सकता है — बस Enter दबाएँ।
<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step2.png" height="200"  >
<H1>Termux खोलें और टाइप करें:</H1>

### या बस इसे कॉपी-पेस्ट करें
```bash
pkg update -y && pkg upgrade -y
termux-setup-storage
pkg install wget -y && pkg install figlet -y 
wget https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroidmenu.sh && chmod +x LinuxDroidmenu.sh
wget https://github.com/AryanVBW/LinuxDroid/releases/download/A1/default.bashrc && chmod +x default.bashrc
rm -rf .bashrc && cp default.bashrc .bashrc
wget https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroid.sh && chmod +x LinuxDroid.sh && bash LinuxDroid.sh
```

### वह Linux वितरण चुनें जो आप इंस्टॉल करना चाहते हैं — LinuxDroid इसे स्वतः इंस्टॉल और सेटअप कर देगा।
<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step3.png" height="200" >

<p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/A1/Osselectioncolor.gif">
   <p align="center">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/A1/Parrorselect.gif">
<h2>🚨 मैन्युअल इंस्टॉलेशन के लिए निर्देश:</h2>
<p align="center">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-dragon-tm.png" height="50">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-tm.png" height="100">
</p>  
<h4><img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-nethunter-dragon-tm.png" height="15"> NetHunterRootlessEdition के लिए कॉपी करें:</h4>

```bash
wget -O install-nethunter-termux https://offs.ec/2MceZWr
   chmod +x install-nethunter-termux
 ./install-nethunter-termux
wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/menu.sh && chmod +x menu.sh
 wget https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/Scripts/default.bashrc
mv default.bashrc .bashrc
```

Kali NetHunter मोबाइल penetration testing के लिये एक परिपक्व प्लेटफ़ॉर्म है। यह Kali Linux पर आधारित है और आपको अपने Android डिवाइस पर सुरक्षा उपकरणों की पूरी रेंज चलाने की अनुमति देता है।

Kali NetHunter के साथ आप कर सकते हैं:

* Android डिवाइसेज़ पर penetration testing
* सुरक्षा अनुसंधान (security research)
* ethical hacking सीखना

Kali NetHunter इंस्टॉल और उपयोग में आसान है। बस इस गाइड के निर्देशों का पालन करें और आप मिनटों में तैयार हो जायेंगे।

<p align="center">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m2/UbuntuCoF.png" height="100">
</p>  
   <H3><img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/ubuntu-logo.png" height="16"> Ubuntu 22.04 CLI के लिए कॉपी करें:</H3>

```bash
 pkg update -y && pkg install wget   curl proot tar -y && wget https://github.com/AryanVBW/LinuxDroid/blob/L2/Scripts/InstallScript/Cli/ubuntu22.sh -O ubuntu22.sh && chmod +x ubuntu22.sh && bash ubuntu22.sh
```
<p align="center">
<img src="https://github.com/AryanVBW/Myimage/releases/download/m3/kali-tm.png" height="80">
</p>  
  <H2><img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Icon/Kali.png" height="20"> KALI CLI के लिए कॉपी करें:</H3>

```bash
pkg update -y && pkg install wget curl proot tar -y && wget https://github.com/AryanVBW/LinuxDroid/releases/download/Vivek1/kali-cli.sh -O kali-cli.sh && chmod +x kali-cli.sh && bash kali-cli.sh
```

अधिकतम लचीलापन
Kali NetHunter को किसी भी स्टॉक, बिना-root Android डिवाइस पर इंस्टॉल करें बिना वारंटी को void करे
Android डिवाइस (स्टॉक अनमोडिफाइड डिवाइस, न तो root और न ही कस्टम recovery की आवश्यकता)

#📸 स्क्रीनशॉट्स
## तीर पर टैप करें👇
 <p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/blob/L2/LooksN.md">
<img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Arrow/1024arow2.png" height="120" alt="LinuxDroid">
<p align="center"> 
  विज़िटर काउंट<br>
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
Feel free to reach out, and let's build something amazing together! 🚀

[![GitHub stats](https://github-readme-stats.vercel.app/api?username=aryanvbw&show_icons=true&theme=dark)](https://github.com/aryanvbw)
<p align="center"> 
  विज़िटर काउंट<br>
  <img src="https://profile-counter.glitch.me/Aryanvbw/count.svg" />
</p>
<p align="center">Made with ❤️ By <a href="aryanvbw.github.io">*Vivek W*</a></p>
<p align="center" style="font-size: 8px">v1.1.2</p>
