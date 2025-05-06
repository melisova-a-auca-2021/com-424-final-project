RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
MAGENTA="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
RESET="\[\033[0m\]"

source /usr/share/git/git-prompt.sh

PS1="${GREEN}💻 \u${YELLOW}@\h ${BLUE}\w ${MAGENTA}\$(__git_ps1 '🌿 %s')\n${CYAN}➤ ${RESET}"
