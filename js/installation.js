document.addEventListener('DOMContentLoaded', () => {
    // Progress Steps Animation
    const progressSteps = document.querySelectorAll('.progress-step');
    const progressLines = document.querySelectorAll('.progress-line');
    let currentStep = 0;

    function updateProgress() {
        progressSteps.forEach((step, index) => {
            if (index < currentStep) {
                step.classList.add('active');
                step.innerHTML = `<i class="fas fa-check-circle"></i><span>${step.dataset.title || 'Complete'}</span>`;
            } else if (index === currentStep) {
                step.classList.add('active');
            } else {
                step.classList.remove('active');
            }
        });

        progressLines.forEach((line, index) => {
            if (index < currentStep) {
                line.style.setProperty('--progress', '100%');
            } else {
                line.style.setProperty('--progress', '0%');
            }
        });

        // For mobile view, adjust the progress step layout
        if (window.innerWidth <= 768) {
            const activeStep = progressSteps[currentStep];
            if (activeStep) {
                // Scroll to the active step on mobile with offset for header
                const headerHeight = document.querySelector('header').offsetHeight;
                const elementPosition = activeStep.getBoundingClientRect().top + window.scrollY;
                window.scrollTo({
                    top: elementPosition - headerHeight - 20,
                    behavior: 'smooth'
                });
            }

            // Update step titles for better mobile display
            progressSteps.forEach((step, index) => {
                const title = step.querySelector('span');
                if (title) {
                    title.style.display = index === currentStep ? 'block' : 'none';
                }
            });
        }
    }

    // Initialize progress
    updateProgress();

    // Copy Button Functionality with improved mobile feedback
    document.querySelectorAll('.copy-btn').forEach(button => {
        button.addEventListener('click', () => {
            const codeBlock = button.closest('.code-block');
            const code = codeBlock.querySelector('code').textContent.trim();
            
            navigator.clipboard.writeText(code).then(() => {
                const originalText = button.innerHTML;
                button.innerHTML = '<i class="fas fa-check"></i>';
                button.style.color = 'var(--success-color)';
                
                // Mobile-friendly feedback - add vibration if supported
                if (navigator.vibrate) {
                    navigator.vibrate(50);
                }
                
                setTimeout(() => {
                    button.innerHTML = originalText;
                    button.style.color = '';
                }, 2000);
            });
        });
    });

    // FAQ Accordion with improved touch handling
    function initFaqAccordion() {
        document.querySelectorAll('.faq-header').forEach(header => {
            header.addEventListener('click', function() {
                const card = header.closest('.faq-card');
                const content = card.querySelector('.faq-content');
                
                // Check if this card is already active
                const isActive = header.classList.contains('active');
                
                // Close all other cards
                document.querySelectorAll('.faq-card').forEach(c => {
                    const h = c.querySelector('.faq-header');
                    const con = c.querySelector('.faq-content');
                    if (h !== header) {
                        h.classList.remove('active');
                        con.style.maxHeight = null;
                        c.style.transform = '';
                        c.style.borderColor = '';
                    }
                });
                
                // Toggle current card
                if (!isActive) {
                    header.classList.add('active');
                    card.style.transform = 'translateY(-5px)';
                    card.style.borderColor = 'var(--primary-color)';
                    if (content) {
                        content.style.maxHeight = content.scrollHeight + 'px';
                    }
                } else {
                    header.classList.remove('active');
                    card.style.transform = '';
                    card.style.borderColor = '';
                    if (content) {
                        content.style.maxHeight = null;
                    }
                }
            });
        });
    }
    
    // Initialize FAQ accordion
    initFaqAccordion();

    // Distribution Selection with improved mobile interaction
    document.querySelectorAll('.distro-option').forEach(option => {
        const handleSelection = () => {
            document.querySelectorAll('.distro-option').forEach(opt => {
                opt.style.borderColor = '';
                opt.style.transform = '';
                opt.classList.remove('selected');
            });
            
            option.style.borderColor = 'var(--primary-color)';
            option.style.transform = 'translateY(-5px)';
            option.classList.add('selected');
            
            // Add haptic feedback for mobile
            if (navigator.vibrate) {
                navigator.vibrate(50);
            }
            
            // Smooth scroll to comparison table on mobile
            if (window.innerWidth <= 768) {
                const comparisonTable = option.closest('.distro-selector').querySelector('.comparison-table');
                if (comparisonTable) {
                    const headerHeight = document.querySelector('header').offsetHeight;
                    const elementPosition = comparisonTable.getBoundingClientRect().top + window.scrollY;
                    window.scrollTo({
                        top: elementPosition - headerHeight - 20,
                        behavior: 'smooth'
                    });
                }
            }
            
            // Update progress
            currentStep = 3;
            updateProgress();
        };
        
        // Handle both click and touch events
        option.addEventListener('click', handleSelection);
        option.addEventListener('touchend', (e) => {
            e.preventDefault();
            handleSelection();
        });
    });

    // Installation Steps Interaction
    document.querySelectorAll('.step-card.interactive').forEach(card => {
        card.addEventListener('click', function() {
            const progressBar = card.querySelector('.progress-indicator');
            if (progressBar) {
                let progress = 0;
                const interval = setInterval(() => {
                    progress += 1;
                    progressBar.style.width = `${progress}%`;
                    
                    if (progress >= 100) {
                        clearInterval(interval);
                        currentStep = 3; // Update to match your progress step logic
                        updateProgress();
                        
                        // Scroll to next section on mobile
                        if (window.innerWidth <= 768) {
                            const nextSection = card.closest('section').nextElementSibling;
                            if (nextSection) {
                                setTimeout(() => {
                                    nextSection.scrollIntoView({behavior: 'smooth'});
                                }, 500);
                            }
                        }
                    }
                }, 50);
            }
        });
    });

    // Smooth scroll for anchor links - mobile optimized
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', (e) => {
            e.preventDefault();
            const target = document.querySelector(anchor.getAttribute('href'));
            if (target) {
                // Get header height for proper offset
                const headerHeight = document.querySelector('header').offsetHeight;
                const targetPosition = target.getBoundingClientRect().top + window.scrollY - headerHeight - 20;
                
                window.scrollTo({
                    behavior: 'smooth',
                    top: targetPosition
                });
            }
        });
    });

    // Add hover effect to requirement cards - with touch support
    document.querySelectorAll('.requirement-card').forEach(card => {
        const applyHoverStyle = () => {
            card.style.transform = 'translateY(-5px)';
            card.style.borderColor = 'var(--primary-color)';
            card.style.boxShadow = 'var(--box-shadow-hover)';
        };
        
        const removeHoverStyle = () => {
            card.style.transform = '';
            card.style.borderColor = '';
            card.style.boxShadow = '';
        };
        
        card.addEventListener('mouseenter', applyHoverStyle);
        card.addEventListener('mouseleave', removeHoverStyle);
        
        // For touch devices
        card.addEventListener('touchstart', applyHoverStyle, {passive: true});
        card.addEventListener('touchend', removeHoverStyle, {passive: true});
    });

    // Adjust for viewport size changes
    window.addEventListener('resize', () => {
        // Recalculate any height-based UI elements
        document.querySelectorAll('.faq-header.active').forEach(header => {
            const content = header.nextElementSibling;
            if (content) {
                content.style.maxHeight = content.scrollHeight + 'px';
            }
        });
    });
    
    // Simple direct OS tab switching functionality
    function handleOSTabClick() {
        // Get the OS name from the clicked tab
        const osName = this.getAttribute('data-os');
        console.log(`Tab clicked: ${osName}`);
        
        // Remove active class from all tabs
        document.querySelectorAll('.os-tab').forEach(tab => {
            tab.classList.remove('active');
        });
        
        // Add active class to clicked tab
        this.classList.add('active');
        
        // Hide all content panels
        document.querySelectorAll('.os-content').forEach(content => {
            content.classList.remove('active');
        });
        
        // Show the corresponding content panel
        const contentPanel = document.getElementById(`${osName}-content`);
        if (contentPanel) {
            contentPanel.classList.add('active');
        } else {
            console.error(`Content panel not found: ${osName}-content`);
        }
    }
    
    // Initialize OS tabs with direct event handlers
    function initializeOSTabs() {
        console.log('Initializing OS tabs with direct event handlers...');
        
        // Remove any existing event listeners by cloning and replacing each tab
        document.querySelectorAll('.os-tab').forEach(tab => {
            const newTab = tab.cloneNode(true);
            tab.parentNode.replaceChild(newTab, tab);
            
            // Add click event directly
            newTab.onclick = handleOSTabClick;
        });
        
        console.log('OS tabs initialized with direct event handlers');
    }
    
    // Initialize OS tabs when DOM is fully loaded
    document.addEventListener('DOMContentLoaded', function() {
        console.log('DOM fully loaded, initializing OS tabs and FAQ');
        initializeOSTabs();
        initFaqAccordion();
        
        // Add a fallback initialization in case the first one doesn't work
        setTimeout(function() {
            console.log('Running fallback OS tabs initialization');
            initializeOSTabs();
        }, 500);
    });
        
        // Update progress display for the current viewport size
        updateProgress();
    });
    
    // Add touch support for distro selection options
    document.querySelectorAll('.distro-option').forEach(option => {
        option.addEventListener('touchend', function(e) {
            e.preventDefault();
            const allOptions = document.querySelectorAll('.distro-option');
            allOptions.forEach(opt => opt.classList.remove('selected'));
            this.classList.add('selected');
        }, {passive: false});
    });
