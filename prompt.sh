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

    local LINE="${BRIGHT_BLUE}────────────────────────────────────────────${RESET}"
    local K8S_CONTEXT=$(kubectl config current-context 2>/dev/null)
    local AWS_PROFILE_DISPLAY=${AWS_PROFILE:-default}

    PS1="${C1}M-; \u${C2}@\h ${C3}\w ${C4}${GIT_BRANCH} ${C6}${VENV} ${C8}📅 $NOW_DATE ⏰ $NOW_TIME\n"
    PS1+="${C9}⎈ ${K8S_CONTEXT} ${C7}☁️ ${AWS_PROFILE_DISPLAY}\n"
    PS1+="${STATUS} ${JOBS}\n${LINE}\n${C5}➤ ${RESET}"
}

PROMPT_COMMAND=prompt_command

