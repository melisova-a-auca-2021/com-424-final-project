#!/bin/bash

source "$(dirname "${BASH_SOURCE[0]}")/colors.sh"
source "$(dirname "${BASH_SOURCE[0]}")/functions.sh"

echo -e "${GREEN}Testing color output...${RESET}"
echo -e "${RED}RED ${GREEN}GREEN ${YELLOW}YELLOW ${BLUE}BLUE${RESET}"

# Simulate function outputs
echo "Exit status test:"
get_exit_status 0
get_exit_status 1

echo "Background job test:"
get_job_status

echo "Git branch test:"
get_git_branch

echo "Python virtualenv test:"
get_venv

echo "Kubernetes context:"
kubectl config current-context 2>/dev/null

echo "AWS profile:"
echo "${AWS_PROFILE:-default}"

echo "Date and time:"
echo "$(date +%F) $(date +%T)"
