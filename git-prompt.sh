RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
MAGENTA="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
BLACK="\[\033[0;30m\]"
WHITE="\[\033[0;37m\]"

BRIGHT_BLACK="\[\033[1;30m\]"
BRIGHT_RED="\[\033[1;31m\]"
BRIGHT_GREEN="\[\033[1;32m\]"
BRIGHT_YELLOW="\[\033[1;33m\]"
BRIGHT_BLUE="\[\033[1;34m\]"
BRIGHT_MAGENTA="\[\033[1;35m\]"
BRIGHT_CYAN="\[\033[1;36m\]"
BRIGHT_WHITE="\[\033[1;37m\]"

# Extended 256-color ANSI
C1="\[\033[38;5;208m\]"  # Orange
C2="\[\033[38;5;172m\]"  # Brown
C3="\[\033[38;5;45m\]"   # Aqua
C4="\[\033[38;5;141m\]"  # Pink
C5="\[\033[38;5;27m\]"   # Deep Blue
C6="\[\033[38;5;118m\]"  # Light Green
C7="\[\033[38;5;202m\]"  # Orange Red
C8="\[\033[38;5;226m\]"  # Bright Yellow
C9="\[\033[38;5;250m\]"  # Light Gray

# Get current date and time
NOW_DATE="$(date +%F)"       # 2025-05-06
NOW_TIME="$(date +%T)"       # 16:45:30

RESET="\[\033[0m\]"

if [ -f "/etc/profile.d/git-prompt.sh" ]; then
    source /etc/profile.d/git-prompt.sh
fi

# Command Status Function
function prompt_command {
    # Exit status of last command
    EXIT="$?"
    if [ "$EXIT" -eq 0 ]; then
        STATUS="${GREEN}✔"
    else
        STATUS="${RED}✘ ($EXIT)"
    fi

    # Background job count
    JOBS_COUNT=$(jobs -p | wc -l)
    if [ "$JOBS_COUNT" -gt 0 ]; then
        JOBS="${YELLOW}🎯 ${JOBS_COUNT} job(s)"
    else
        JOBS=""
    fi

    # Git branch info (only if available)
    if type __git_ps1 &> /dev/null; then
        GIT_BRANCH="$(__git_ps1 '🌿 %s')"
    else
        GIT_BRANCH=""
    fi

    # Final PS1 value
    PS1="${C1}💻 \u${C2}@\h ${C3}\w ${C4}${GIT_BRANCH} ${C6}📅 $NOW_DATE ⏰ $NOW_TIME\n${STATUS} ${JOBS} ${C5}➤ ${RESET}"
}

PROMPT_COMMAND=prompt_command
