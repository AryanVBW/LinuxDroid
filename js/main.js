// LinuxDroid Website JavaScript

document.addEventListener('DOMContentLoaded', function() {
    // Mobile menu toggle
    const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
    const navMenu = document.querySelector('nav ul');
    
    if (mobileMenuBtn && navMenu) {
        mobileMenuBtn.addEventListener('click', function() {
            navMenu.classList.toggle('show');
        });
    }
    
    // Copy to clipboard functionality
    const copyButtons = document.querySelectorAll('.copy-btn');
    
    copyButtons.forEach(button => {
        button.addEventListener('click', function() {
            const codeBlock = this.parentElement.querySelector('code');
            const textToCopy = codeBlock.textContent.trim();
            
            navigator.clipboard.writeText(textToCopy)
                .then(() => {
                    // Change button text temporarily
                    const originalText = this.textContent;
                    this.textContent = 'Copied!';
                    
                    setTimeout(() => {
                        this.textContent = originalText;
                    }, 2000);
                })
                .catch(err => {
                    console.error('Failed to copy: ', err);
                });
        });
    });
    
    // Smooth scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            
            const targetElement = document.querySelector(targetId);
            
            if (targetElement) {
                window.scrollTo({
                    top: targetElement.offsetTop - 80, // Adjust for header height
                    behavior: 'smooth'
                });
                
                // Close mobile menu if open
                if (navMenu.classList.contains('show')) {
                    navMenu.classList.remove('show');
                }
            }
        });
    });
    
    // Add active class to current navigation item
    const currentPage = window.location.pathname.split('/').pop();
    const navLinks = document.querySelectorAll('nav a');
    
    navLinks.forEach(link => {
        const linkPage = link.getAttribute('href').split('/').pop();
        
        if ((currentPage === '' && linkPage === 'index.html') || 
            (currentPage && linkPage === currentPage)) {
            link.classList.add('active');
        }
    });
    
    // Initialize image lightbox for screenshots
    const screenshotItems = document.querySelectorAll('.screenshot-item img');
    
    if (typeof GLightbox !== 'undefined') {
        GLightbox({
            selector: '.screenshot-item img',
            touchNavigation: true,
            loop: true
        });
    }
    
    // OS selection highlighting
    const osCards = document.querySelectorAll('.os-card');
    
    osCards.forEach(card => {
        card.addEventListener('click', function() {
            osCards.forEach(c => c.classList.remove('selected'));
            this.classList.add('selected');
        });
    });
    
    // FAQ dropdown functionality
    const faqHeaders = document.querySelectorAll('.faq-header');
    
    faqHeaders.forEach((header, index) => {
        header.addEventListener('click', function() {
            // Toggle active class on the header
            this.classList.toggle('active');
            
            // Toggle the content visibility
            const content = this.nextElementSibling;
            if (content.style.maxHeight) {
                content.style.maxHeight = null;
            } else {
                content.style.maxHeight = content.scrollHeight + 'px';
            }
        });
        
        // Initialize the first FAQ item as open
        if (index === 0) {
            header.classList.add('active');
            const content = header.nextElementSibling;
            content.style.maxHeight = content.scrollHeight + 'px';
        }
    });
});

// Function to copy installation commands to clipboard
function copyToClipboard(text) {
    navigator.clipboard.writeText(text)
        .then(() => {
            const notification = document.createElement('div');
            notification.className = 'copy-notification';
            notification.textContent = 'Command copied to clipboard!';
            
            document.body.appendChild(notification);
            
            setTimeout(() => {
                notification.classList.add('show');
            }, 10);
            
            setTimeout(() => {
                notification.classList.remove('show');
                setTimeout(() => {
                    document.body.removeChild(notification);
                }, 300);
            }, 2000);
        })
        .catch(err => {
            console.error('Failed to copy: ', err);
        });
}

// Handle OS selection and display appropriate installation commands
function selectOS(osName, element) {
    const osCards = document.querySelectorAll('.os-card');
    osCards.forEach(card => card.classList.remove('selected'));
    
    if (element) {
        element.classList.add('selected');
    }
    
    const commandDisplay = document.getElementById('installation-command');
    const osInfoDisplay = document.getElementById('os-info');
    
    if (!commandDisplay || !osInfoDisplay) return;
    
    // Set the installation command based on OS selection
    let command = '';
    let osInfo = '';
    
    switch(osName.toLowerCase()) {
        case 'ubuntu':
            command = 'pkg update -y && pkg install wget curl proot tar -y && wget https://github.com/AryanVBW/LinuxDroid/blob/L2/Scripts/InstallScript/Cli/ubuntu22.sh -O ubuntu22.sh && chmod +x ubuntu22.sh && bash ubuntu22.sh';
            osInfo = 'Ubuntu is a popular Linux distribution based on Debian. It offers a user-friendly experience with a focus on ease of use.';
            break;
        case 'kali':
            command = 'pkg update -y && pkg install wget curl proot tar -y && wget https://github.com/AryanVBW/LinuxDroid/releases/download/Vivek1/kali-cli.sh -O kali-cli.sh && chmod +x kali-cli.sh && bash kali-cli.sh';
            osInfo = 'Kali Linux is a Debian-based distribution designed for digital forensics and penetration testing.';
            break;
        case 'nethunter':
            command = 'wget -O install-nethunter-termux https://offs.ec/2MceZWr && chmod +x install-nethunter-termux && ./install-nethunter-termux';
            osInfo = 'Kali NetHunter is the ultimate mobile penetration testing platform based on Kali Linux.';
            break;
        case 'parrot':
            command = 'curl -sSL https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/1click.install.sh | bash';
            osInfo = 'Parrot OS is a security-focused Linux distribution with a collection of tools for penetration testing and digital forensics.';
            break;
        default:
            command = 'curl -sSL https://raw.githubusercontent.com/AryanVBW/LinuxDroid/refs/heads/main/1click.install.sh | bash';
            osInfo = 'Select your preferred Linux distribution to see specific installation instructions.';
    }
    
    commandDisplay.textContent = command;
    osInfoDisplay.textContent = osInfo;
}

// Lazy load images for better performance
document.addEventListener("DOMContentLoaded", function() {
    const lazyImages = document.querySelectorAll('img[data-src]');
    
    if ('IntersectionObserver' in window) {
        const imageObserver = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const img = entry.target;
                    img.src = img.dataset.src;
                    img.removeAttribute('data-src');
                    imageObserver.unobserve(img);
                }
            });
        });
        
        lazyImages.forEach(img => {
            imageObserver.observe(img);
        });
    } else {
        // Fallback for browsers that don't support IntersectionObserver
        lazyImages.forEach(img => {
            img.src = img.dataset.src;
            img.removeAttribute('data-src');
        });
    }
});
