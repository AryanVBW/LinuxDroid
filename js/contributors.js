// Function to fetch contributors from GitHub API
async function fetchContributors() {
    try {
        const response = await fetch('https://api.github.com/repos/AryanVBW/LinuxDroid/contributors');
        const contributors = await response.json();
        return contributors;
    } catch (error) {
        console.error('Error fetching contributors:', error);
        return [];
    }
}

// Function to create contributor HTML element
function createContributorElement(contributor) {
    const div = document.createElement('div');
    div.className = 'team-member';
    div.innerHTML = `
        <img src="${contributor.avatar_url}" alt="${contributor.login}">
        <h3>${contributor.login}</h3>
        <p class="role">Contributor</p>
        <div class="contribution-stats">
            <span class="contributions">
                <i class="fas fa-code-commit"></i>
                ${contributor.contributions} commits
            </span>
        </div>
        <div class="social-links">
            <a href="${contributor.html_url}" class="social-link" target="_blank" rel="noopener noreferrer">
                <i class="fab fa-github"></i>
            </a>
        </div>
    `;
    return div;
}

// Function to update the team section
async function updateTeamSection() {
    const teamGrid = document.querySelector('.team-grid');
    if (!teamGrid) return;

    // Show loading state
    teamGrid.innerHTML = '<div class="loading"><i class="fas fa-spinner fa-spin"></i> Loading contributors...</div>';

    try {
        const contributors = await fetchContributors();
        
        if (contributors.length === 0) {
            teamGrid.innerHTML = '<div class="error">Unable to load contributors. Please try again later.</div>';
            return;
        }

        // Clear loading state
        teamGrid.innerHTML = '';

        // Add project lead first
        const projectLead = document.createElement('div');
        projectLead.className = 'team-member featured';
        projectLead.innerHTML = `
            <img src="https://github.com/AryanVBW.png" alt="Vivek W">
            <h3>Vivek W</h3>
            <p class="role">Project Lead & Core Developer</p>
            <div class="social-links">
                <a href="https://github.com/AryanVBW" class="social-link" target="_blank" rel="noopener noreferrer">
                    <i class="fab fa-github"></i>
                </a>
                <a href="https://www.linkedin.com/in/vivek-wagadare" class="social-link" target="_blank" rel="noopener noreferrer">
                    <i class="fab fa-linkedin"></i>
                </a>
            </div>
        `;
        teamGrid.appendChild(projectLead);

        // Add other contributors
        contributors.forEach(contributor => {
            if (contributor.login !== 'AryanVBW') { // Skip project lead as we've already added them
                const contributorElement = createContributorElement(contributor);
                teamGrid.appendChild(contributorElement);
            }
        });
    } catch (error) {
        console.error('Error:', error);
        teamGrid.innerHTML = '<div class="error">Unable to load contributors. Please try again later.</div>';
    }
}

// Initialize when DOM is loaded
document.addEventListener('DOMContentLoaded', updateTeamSection);
