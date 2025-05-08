source "$(dirname "${BASH_SOURCE[0]}")/colors.sh"
source "$(dirname "${BASH_SOURCE[0]}")/functions.sh"

prompt_command() {
    local EXIT=$?
    local STATUS=$(get_exit_status $EXIT)
    local JOBS=$(get_job_status)
    local GIT_BRANCH=$(get_git_branch)
    local VENV=$(get_venv)
    local NOW_DATE=$(date +%F)
    local NOW_TIME=$(date +%T)

    PS1="${C1}💻 \u${C2}@\h ${C3}\w ${C4}${GIT_BRANCH} ${C6}📅 $NOW_DATE ⏰ $NOW_TIME ${MAGENTA}${VENV}\n${STATUS} ${JOBS} ${C5}➤ ${RESET}"
}

PROMPT_COMMAND=prompt_command
