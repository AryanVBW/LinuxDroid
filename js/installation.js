document.addEventListener('DOMContentLoaded', () => {
    // Progress Steps Animation
    const progressSteps = document.querySelectorAll('.progress-step');
    const progressLines = document.querySelectorAll('.progress-line');
    let currentStep = 0;

    function updateProgress() {
        progressSteps.forEach((step, index) => {
            if (index <= currentStep) {
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
    }

    // Initialize progress
    updateProgress();

    // Copy Button Functionality
    document.querySelectorAll('.copy-btn').forEach(button => {
        button.addEventListener('click', () => {
            const codeBlock = button.closest('.code-block');
            const code = codeBlock.querySelector('code').textContent.trim();
            
            navigator.clipboard.writeText(code).then(() => {
                const originalText = button.innerHTML;
                button.innerHTML = '<i class="fas fa-check"></i>';
                button.style.color = 'var(--success-color)';
                
                setTimeout(() => {
                    button.innerHTML = originalText;
                    button.style.color = '';
                }, 2000);
            });
        });
    });

    // FAQ Accordion
    document.querySelectorAll('.faq-header').forEach(header => {
        header.addEventListener('click', () => {
            const card = header.closest('.faq-card');
            const wasExpanded = card.classList.contains('expanded');
            
            // Close all cards
            document.querySelectorAll('.faq-card').forEach(c => {
                c.classList.remove('expanded');
            });
            
            // Open clicked card if it wasn't expanded
            if (!wasExpanded) {
                card.classList.add('expanded');
            }
        });
    });

    // Distribution Selection
    document.querySelectorAll('.distro-option').forEach(option => {
        option.addEventListener('click', () => {
            document.querySelectorAll('.distro-option').forEach(opt => {
                opt.style.borderColor = '';
                opt.style.transform = '';
            });
            
            option.style.borderColor = 'var(--primary-color)';
            option.style.transform = 'translateY(-5px)';
            
            // Update progress
            currentStep = 3;
            updateProgress();
        });
    });

    // Installation Steps Interaction
    document.querySelectorAll('.step-card.interactive').forEach((card, index) => {
        card.addEventListener('click', () => {
            currentStep = index;
            updateProgress();
            
            // Simulate progress bar for installation step
            if (index === 2) {
                const progressBar = card.querySelector('.progress-indicator');
                if (progressBar) {
                    let progress = 0;
                    const interval = setInterval(() => {
                        progress += 1;
                        progressBar.style.width = `${progress}%`;
                        
                        if (progress >= 100) {
                            clearInterval(interval);
                            currentStep = 3;
                            updateProgress();
                        }
                    }, 50);
                }
            }
        });
    });

    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', (e) => {
            e.preventDefault();
            const target = document.querySelector(anchor.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });

    // Add hover effect to requirement cards
    document.querySelectorAll('.requirement-card').forEach(card => {
        card.addEventListener('mouseenter', () => {
            card.style.transform = 'translateY(-5px)';
            card.style.borderColor = 'var(--primary-color)';
        });
        
        card.addEventListener('mouseleave', () => {
            card.style.transform = '';
            card.style.borderColor = '';
        });
    });
}); 