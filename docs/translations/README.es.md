## 🌐 Idiomas disponibles
[🇬🇧 Inglés](../../README.md) | [🇮🇳 Hindi](README.hi.md) | [🇪🇸 Español](README.es.md) | [🇨🇳 Chino (Simplificado)](README.zh.md)

> Selecciona tu idioma preferido arriba 🌍 para leer el README en ese idioma.

# Linux CLI + GUI para Android
<p align="center">
   <a href="https://github.com/AryanVBw">
<img src="https://raw.githubusercontent.com/AryanVBW/LinuxDroid/main/LinuxDroid/Banner/IMG_20231220_014524-removebg-preview.png" height="250" alt="Logotipo de LinuxDroid"></a></p>

# LinuxDroid

**LinuxDroid** es una interfaz de línea de comandos (CLI) y una interfaz gráfica de usuario (GUI) de Linux para Android, que ofrece una colección de sistemas operativos de código abierto. Esta plataforma permite a los usuarios experimentar con una variedad de distribuciones Linux en dispositivos Android.
<p align="center">  
   <a href="https://github.com/AryanVBW/LinuxDroid/tree/main#linuxdroid">
<img src="https://github.com/AryanVBW/LinuxDroid/releases/download/L1/Os2.gif" alt="Animación de LinuxDroid en funcionamiento"></a></p>

### Script de instalación con un clic
Este script simplifica el proceso de instalación, brindando una experiencia fluida para varios sistemas operativos. Ya sea que prefieras una interfaz gráfica o la línea de comandos, está diseñado para ser simple y eficiente.

#### Copiar Script de Instalación
```
curl -sSL https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/1click.install.sh | bash
```

Este script copia el comando de instalación de LinuxDroid en tu portapapeles, facilitando pegarlo y ejecutarlo.
   - Parrot 🦜 OS  
   - Kali  
   - Ubuntu  
   - Arch  
   - Debian  
   - Manjaro  
   - Void  
   - Alpine  
   - Fedora  
   - NethunterRootLess (Linux especializado en hacking)  
   - BlackBox (próximamente 🔜)  
   - CentOS (próximamente 🔜)

### Entornos de escritorio compatibles:
- LXDE  
- LXQT  
- XFCE  
- MATE  
- KDE Plasma (Beta)  
- GNOME (próximamente)

### 🪟 Gestores de ventanas:
- Awesome  
- Openbox  
- i3  

Además de la compatibilidad con varios sistemas operativos, LinuxDroid también proporciona instalación automática de **Kali Nethunter** en todas las versiones de Android. Este proyecto tiene como objetivo facilitar distintos usos como:

- Configurar entornos de servidor local con Apache  
- Realizar pruebas de penetración (pentesting) con Kali  

### 🌟 Características:
- Funcionalidad completa de todas las distribuciones de Linux compatibles  
- Total compatibilidad con herramientas populares de Kali y Ubuntu  

#### Herramientas incluidas:
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

<h1>Instalación:</h1>
<p align="center">
   <a href="https://f-droid.org/packages/com.termux/"><img src="https://github.com/AryanVBW/LinuxDroid/releases/download/S1/Step1.png" height="200" alt="Descargar Termux desde F-Droid"></a></p>

Instala la aplicación **Termux** desde [F-Droid](https://f-droid.org/) o [Nethunter Store](https://store.nethunter.com/packages/com.termux/).  
O descárgala directamente desde aquí:  

<p align="center">
   <a href="https://f-droid.org/repo/com.termux_118.apk"><img src="https://github.com/AryanVBW/Myimage/releases/download/m2/25860-7-download-now-button-glossy-green.png" alt="Botón verde para descargar Termux"></a></p>

Desde Nethunter Store, instala Termux, NetHunter-KeX y Hacker’s Keyboard.  
Nota: Puede parecer que la instalación se congela en “installing” en algunos dispositivos; solo presiona Enter.

### Abre Termux y escribe:
```bash
pkg update -y && pkg upgrade -y
termux-setup-storage
pkg install wget -y && pkg install figlet -y 
wget https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroidmenu.sh && chmod +x LinuxDroidmenu.sh
wget https://github.com/AryanVBW/LinuxDroid/releases/download/A1/default.bashrc && chmod +x default.bashrc
rm -rf .bashrc && cp default.bashrc .bashrc
wget https://github.com/AryanVBW/LinuxDroid/releases/download/scripts/LinuxDroid.sh && chmod +x LinuxDroid.sh && bash LinuxDroid.sh
```

Selecciona la distribución Linux que desees instalar — LinuxDroid la configurará automáticamente.

Kali NetHunter es la plataforma móvil definitiva para pruebas de penetración. Basado en Kali Linux, te permite ejecutar una gama completa de herramientas de seguridad en tu dispositivo Android.

Con Kali NetHunter puedes:
- Realizar pruebas de penetración  
- Investigar seguridad móvil  
- Aprender hacking ético  

<p align="center">Hecho con ❤️ por <a href="aryanvbw.github.io">Vivek W</a></p>
<p align="center" style="font-size: 8px">v1.1.2</p>
