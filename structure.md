# LinuxDroid Project Structure

## Overview
LinuxDroid is organized into several key components that work together to provide a seamless Linux experience on Android devices.

## Directory Structure

```
LinuxDroid/
├── LinuxDroid/               # Core assets directory
│   ├── Banner/              # Project banners and images
│   └── Icon/                # OS and application icons
│
├── scripts/                 # Installation and utility scripts
│   ├── LinuxDroidmenu.sh   # Main menu interface
│   └── OS-specific/        # OS-specific installation scripts
│
├── 1click.install.sh       # One-click installation script
├── default.bashrc          # Default bash configuration
├── README.md              # Project documentation
└── structure.md           # This file - project structure documentation
```

## Component Description

### 1. Core Scripts
- `1click.install.sh`: Primary installation script that sets up the basic environment
- `LinuxDroidmenu.sh`: Interactive menu for OS selection and management
- `default.bashrc`: Customized bash configuration for optimal terminal experience

### 2. Supported Operating Systems
LinuxDroid supports multiple Linux distributions:
- Parrot OS
- Kali Linux
- Ubuntu
- Arch Linux
- Debian
- Manjaro
- Void Linux
- Alpine
- Fedora
- NethunterRootLess

### 3. Asset Management
- **Banner Directory**: Contains project branding and promotional images
- **Icon Directory**: Houses distribution-specific icons and logos

### 4. Documentation
- `README.md`: Primary project documentation and setup instructions
- `structure.md`: Detailed project structure and organization

## Installation Flow
1. User executes `1click.install.sh`
2. Script sets up Termux environment
3. Downloads and configures necessary components
4. Installs LinuxDroid menu interface
5. User can then select and install desired Linux distributions

## Development Guidelines
- All scripts should maintain POSIX compliance
- New OS additions should follow the existing script structure
- Asset additions should maintain consistent naming conventions
- Documentation updates should be made for significant changes
