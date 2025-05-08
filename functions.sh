# Load git-prompt.sh if available
if [ -f "/etc/profile.d/git-prompt.sh" ]; then
    source /etc/profile.d/git-prompt.sh
fi

# Exit status icon
get_exit_status() {
    local EXIT=$1
    if [ "$EXIT" -eq 0 ]; then
        echo "${GREEN}✔"
    else
        echo "${RED}✘ ($EXIT)"
    fi
}

# Background jobs
get_job_status() {
    local COUNT=$(jobs -p | wc -l)
    if [ "$COUNT" -gt 0 ]; then
        echo "${YELLOW}🎯 ${COUNT} job(s)"
    else
        echo ""
    fi
}

# Git branch
get_git_branch() {
    if type __git_ps1 &>/dev/null; then
        __git_ps1 '🌿 %s'
    fi
}
