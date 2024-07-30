# Define colors
RESET='\[\033[0m\]'
RED='\[\033[0;31m\]'
GREEN='\[\033[0;32m\]'
BLUE='\[\033[0;34m\]'
CYAN='\[\033[0;36m\]'
MAGENTA='\[\033[0;35m\]'
YELLOW='\[\033[1;33m\]'
GRAY='\[\033[1;30m\]'

# Define symbols using emojis
TIME_SYMBOL='🕒'  # Emoji for clock
USER_SYMBOL='👤'  # Emoji for user
HOST_SYMBOL='💻'  # Emoji for host
DIR_SYMBOL='📁'   # Emoji for directory
GIT_BRANCH_SYMBOL='🌿'  # Emoji for Git branch

# Function to get the current Git branch
parse_git_branch() {
    git branch 2>/dev/null | grep '^*' | colrm 1 2
}

# Function to set the PS1 variable
set_prompt() {
    local git_branch
    local username
    git_branch=$(parse_git_branch)
    username=$(whoami)  # Fetch the host username

    # Use text for Git branch if Unicode symbol is not available
    if [ -z "$git_branch" ]; then
        git_branch="[No Branch]"
    else
        git_branch="($git_branch)"
    fi

    # Set the prompt with date, time, user, host, current directory, and Git branch
    PS1="${CYAN}${USER_SYMBOL} ${username} ${RESET}| ${MAGENTA}${HOST_SYMBOL} \h ${RESET}| ${YELLOW}${TIME_SYMBOL} \D{%H:%M} ${RESET}| ${BLUE}${DIR_SYMBOL} \w ${RESET}| ${GRAY}${GIT_BRANCH_SYMBOL} ${git_branch} ${RESET}\$ "
}

# Set the prompt command
PROMPT_COMMAND=set_prompt
