// LinuxDroid Website JavaScript

document.addEventListener('DOMContentLoaded', function() {
    // Mobile menu functionality with enhanced animations
    const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
    const nav = document.querySelector('nav');
    const body = document.body;
    const menuIcon = mobileMenuBtn?.querySelector('i');
    
    if (mobileMenuBtn) {
        // Toggle menu with animations
        mobileMenuBtn.addEventListener('click', function(e) {
            e.stopPropagation();
            body.classList.toggle('mobile-menu-open');
            
            // Toggle menu icon
            if (menuIcon) {
                menuIcon.classList.toggle('fa-bars');
                menuIcon.classList.toggle('fa-times');
            }
            
            // Toggle aria-expanded
            const isExpanded = body.classList.contains('mobile-menu-open');
            mobileMenuBtn.setAttribute('aria-expanded', isExpanded);
            
            // Add haptic feedback for mobile devices
            if (navigator.vibrate) {
                navigator.vibrate(50);
            }
        });

        // Close menu when clicking outside
        document.addEventListener('click', function(e) {
            if (body.classList.contains('mobile-menu-open') && 
                !nav.contains(e.target) && 
                !mobileMenuBtn.contains(e.target)) {
                body.classList.remove('mobile-menu-open');
                if (menuIcon) {
                    menuIcon.classList.remove('fa-times');
                    menuIcon.classList.add('fa-bars');
                }
                mobileMenuBtn.setAttribute('aria-expanded', 'false');
            }
        });

        // Close menu when clicking on a link
        document.querySelectorAll('nav a').forEach(link => {
            link.addEventListener('click', function() {
                body.classList.remove('mobile-menu-open');
                if (menuIcon) {
                    menuIcon.classList.remove('fa-times');
                    menuIcon.classList.add('fa-bars');
                }
                mobileMenuBtn.setAttribute('aria-expanded', 'false');
            });
        });

        // Handle touch events for better mobile experience
        let touchStartY = 0;
        let touchEndY = 0;
        
        nav.addEventListener('touchstart', function(e) {
            touchStartY = e.touches[0].clientY;
        }, { passive: true });
        
        nav.addEventListener('touchmove', function(e) {
            touchEndY = e.touches[0].clientY;
            const diff = touchStartY - touchEndY;
            
            // If swiping down near the top of the menu, close it
            if (diff < -50 && window.scrollY <= 0) {
                body.classList.remove('mobile-menu-open');
                if (menuIcon) {
                    menuIcon.classList.remove('fa-times');
                    menuIcon.classList.add('fa-bars');
                }
                mobileMenuBtn.setAttribute('aria-expanded', 'false');
            }
        }, { passive: true });

        // Close menu on resize if screen becomes larger
        let resizeTimer;
        window.addEventListener('resize', function() {
            clearTimeout(resizeTimer);
            resizeTimer = setTimeout(function() {
                if (window.innerWidth > 768 && body.classList.contains('mobile-menu-open')) {
                    body.classList.remove('mobile-menu-open');
                    if (menuIcon) {
                        menuIcon.classList.remove('fa-times');
                        menuIcon.classList.add('fa-bars');
                    }
                    mobileMenuBtn.setAttribute('aria-expanded', 'false');
                }
            }, 250);
        });

        // Handle keyboard navigation
        document.addEventListener('keydown', function(e) {
            if (e.key === 'Escape' && body.classList.contains('mobile-menu-open')) {
                body.classList.remove('mobile-menu-open');
                if (menuIcon) {
                    menuIcon.classList.remove('fa-times');
                    menuIcon.classList.add('fa-bars');
                }
                mobileMenuBtn.setAttribute('aria-expanded', 'false');
                mobileMenuBtn.focus();
            }
        });
    }
    
    // Copy to clipboard functionality
    const copyButtons = document.querySelectorAll('.copy-btn');
    
    copyButtons.forEach(button => {
        button.addEventListener('click', function() {
            const textToCopy = this.getAttribute('data-clipboard-text') || this.previousElementSibling.textContent;
            
            navigator.clipboard.writeText(textToCopy)
                .then(() => {
                    // Visual feedback
                    const originalText = this.innerHTML;
                    this.innerHTML = '<i class="fas fa-check"></i> Copied!';
                    
                    setTimeout(() => {
                        this.innerHTML = originalText;
                    }, 2000);
                })
                .catch(err => {
                    console.error('Failed to copy: ', err);
                });
        });
    });
    
    // FAQ accordion functionality
    const faqHeaders = document.querySelectorAll('.faq-header');
    
    faqHeaders.forEach((header, index) => {
        header.addEventListener('click', function() {
            this.classList.toggle('active');
            
            // Close other active accordions
            faqHeaders.forEach(otherHeader => {
                if (otherHeader !== this && otherHeader.classList.contains('active')) {
                    otherHeader.classList.remove('active');
                    otherHeader.nextElementSibling.style.maxHeight = null;
                }
            });
            
            // Toggle the content visibility using maxHeight
            const content = this.nextElementSibling;
            if (this.classList.contains('active')) {
                content.style.maxHeight = content.scrollHeight + 'px';
            } else {
                content.style.maxHeight = null;
            }
        });
        
        // Open first FAQ item by default
        if (index === 0) {
            header.classList.add('active');
            const content = header.nextElementSibling;
            content.style.maxHeight = content.scrollHeight + 'px';
        }
    });
    
    // Smooth scrolling for anchor links with improved mobile handling
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            
            const targetElement = document.querySelector(targetId);
            
            if (targetElement) {
                // Close mobile menu if open
                if (body.classList.contains('mobile-menu-open')) {
                    body.classList.remove('mobile-menu-open');
                }
                
                // Get header height for proper offset
                const headerHeight = document.querySelector('header').offsetHeight;
                const targetPosition = targetElement.getBoundingClientRect().top + window.scrollY - headerHeight - 20;
                
                window.scrollTo({
                    behavior: 'smooth',
                    top: targetPosition
                });
            }
        });
    });
    
    // Add active class to current page nav link
    const currentPath = window.location.pathname;
    const navLinks = document.querySelectorAll('nav a');
    
    navLinks.forEach(link => {
        const linkPath = link.getAttribute('href');
        
        // Check if the current path includes the link path or if we're on the home page
        if ((currentPath.includes(linkPath) && linkPath !== 'index.html' && linkPath !== '/') || 
            (linkPath === 'index.html' && (currentPath === '/' || currentPath.endsWith('/index.html')))) {
            link.classList.add('active');
        }
    });
    
    // Handle header shadow on scroll for better mobile experience
    function handleHeaderShadow() {
        const header = document.querySelector('header');
        if (window.scrollY > 20) {
            header.style.boxShadow = 'var(--box-shadow-hover)';
        } else {
            header.style.boxShadow = 'var(--box-shadow)';
        }
    }
    
    window.addEventListener('scroll', handleHeaderShadow);
    
    // Enhanced lightbox functionality if lightbox is used
    if(typeof lightbox !== 'undefined') {
        lightbox.option({
            'resizeDuration': 200,
            'wrapAround': true,
            'albumLabel': "Image %1 of %2",
            'fadeDuration': 300,
            'fitImagesInViewport': true,
            'positionFromTop': 50,
            'showImageNumberLabel': true,
            'alwaysShowNavOnTouchDevices': true,
            'touchNavigation': true,
            'loop': true,
            'autoplayVideos': true
        });
    }
    
    // OS selection highlighting with better touch support
    const osCards = document.querySelectorAll('.os-card');
    
    osCards.forEach(card => {
        ['click', 'touchend'].forEach(eventType => {
            card.addEventListener(eventType, function(e) {
                if (eventType === 'touchend') {
                    e.preventDefault(); // Prevent default touch behavior
                }
                osCards.forEach(c => c.classList.remove('selected'));
                this.classList.add('selected');
            });
        });
    });
    
    // Enhance responsive tables with data attributes for mobile viewing
    const comparisonRows = document.querySelectorAll('.comparison-row:not(.header)');
    const headerCells = document.querySelectorAll('.comparison-row.header .comparison-cell');
    
    if (headerCells.length > 0) {
        const labels = Array.from(headerCells).map(cell => cell.textContent);
        
        comparisonRows.forEach(row => {
            const cells = row.querySelectorAll('.comparison-cell');
            cells.forEach((cell, index) => {
                if (labels[index]) {
                    cell.setAttribute('data-label', labels[index]);
                }
            });
        });
    }
    
    // Add touch-friendly interactions for mobile devices
    if ('ontouchstart' in window || navigator.maxTouchPoints > 0) {
        // Enhanced interactions for timeline items
        const timelineItems = document.querySelectorAll('.timeline-item');
        
        timelineItems.forEach(item => {
            item.addEventListener('touchstart', function() {
                this.style.transform = 'scale(0.98)';
            });
            
            item.addEventListener('touchend', function() {
                this.style.transform = 'scale(1)';
                
                // Add subtle highlight effect
                this.querySelector('.timeline-content').style.borderColor = 'var(--primary-color)';
                setTimeout(() => {
                    this.querySelector('.timeline-content').style.borderColor = '';
                }, 800);
            });
        });
        
        // Improved community cards for touch
        const communityCards = document.querySelectorAll('.community-card');
        
        communityCards.forEach(card => {
            card.addEventListener('touchstart', function() {
                this.style.transform = 'scale(0.98)';
            });
            
            card.addEventListener('touchend', function() {
                this.style.transform = '';
                setTimeout(() => {
                    this.style.transform = 'translateY(-5px)';
                }, 50);
                setTimeout(() => {
                    this.style.transform = '';
                }, 300);
            });
        });
    }
    
    // Adjust timeline for mobile screens
    function updateTimelineForMobile() {
        const timeline = document.querySelector('.timeline');
        if (!timeline) return;
        
        if (window.innerWidth <= 768) {
            // For mobile, reset the timeline layout for vertical display
            timeline.style.paddingLeft = '25px';
            
            const items = document.querySelectorAll('.timeline-item');
            items.forEach(item => {
                item.style.width = '100%';
                item.style.left = '0';
                item.style.padding = '0 0 0 20px';
            });
        } else {
            // Reset to desktop layout
            timeline.style.paddingLeft = '';
            
            const items = document.querySelectorAll('.timeline-item');
            items.forEach((item, index) => {
                item.style.width = '50%';
                item.style.left = index % 2 ? '50%' : '0';
                item.style.padding = '';
            });
        }
    }
    
    // Run on load and resize
    updateTimelineForMobile();
    window.addEventListener('resize', updateTimelineForMobile);
    
    // Fix images aspect ratio on mobile
    const allImages = document.querySelectorAll('img');
    
    allImages.forEach(img => {
        img.addEventListener('load', function() {
            this.style.height = 'auto'; // Ensure proper aspect ratio
        });
    });
    
    // Optimize community stats for narrow mobile screens
    function adjustCommunityStats() {
        const statContainers = document.querySelectorAll('.community-stats');
        
        if (window.innerWidth <= 480) {
            statContainers.forEach(container => {
                container.style.flexDirection = 'column';
                container.style.gap = '10px';
                
                const statItems = container.querySelectorAll('.stat-item');
                statItems.forEach(item => {
                    item.style.margin = '5px 0';
                });
            });
        } else {
            statContainers.forEach(container => {
                container.style.flexDirection = '';
                container.style.gap = '';
                
                const statItems = container.querySelectorAll('.stat-item');
                statItems.forEach(item => {
                    item.style.margin = '';
                });
            });
        }
    }
    
    // Run on load and resize
    adjustCommunityStats();
    window.addEventListener('resize', adjustCommunityStats);
    
    // Handle initial page load
    handleHeaderShadow();
});

// Function to copy text to clipboard
function copyToClipboard(text) {
    // Use clipboard API if available
    if (navigator.clipboard) {
        navigator.clipboard.writeText(text)
            .then(() => {
                // Show toast notification or change button text temporarily
                const toast = document.createElement('div');
                toast.className = 'toast';
                toast.textContent = 'Copied to clipboard!';
                document.body.appendChild(toast);
                
                // Show the toast
                setTimeout(() => {
                    toast.classList.add('show');
                }, 10);
                
                // Hide and remove the toast
                setTimeout(() => {
                    toast.classList.remove('show');
                    setTimeout(() => {
                        document.body.removeChild(toast);
                    }, 300);
                }, 2000);
            })
            .catch(err => {
                console.error('Failed to copy: ', err);
                // Fallback
                fallbackCopyTextToClipboard(text);
            });
    } else {
        // Fallback for browsers that don't support clipboard API
        fallbackCopyTextToClipboard(text);
    }
}

// Fallback function for older browsers
function fallbackCopyTextToClipboard(text) {
    const textArea = document.createElement('textarea');
    textArea.value = text;
    textArea.style.position = 'fixed';
    textArea.style.top = '0';
    textArea.style.left = '0';
    textArea.style.width = '2em';
    textArea.style.height = '2em';
    textArea.style.padding = '0';
    textArea.style.border = 'none';
    textArea.style.outline = 'none';
    textArea.style.boxShadow = 'none';
    textArea.style.background = 'transparent';
    
    document.body.appendChild(textArea);
    textArea.focus();
    textArea.select();
    
    try {
        const successful = document.execCommand('copy');
        if (successful) {
            // Show notification
            alert('Copied to clipboard!');
        } else {
            console.error('Unable to copy');
        }
    } catch (err) {
        console.error('Error copying text: ', err);
    }
    
    document.body.removeChild(textArea);
}
