
# Define how Bash prompt looks like:
#
 
# Cli Colors
export CLICOLOR=1
# use yellow for dir's
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
#export COLOR_BLUE='\033[0;34m'
export COLOR_BLUE='\033[1;32m'
#export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_LIGHT_BLUE='\033[1;32m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'
export SVN_EDITOR=vim

alias colorslist="set | egrep 'COLOR_\w*'"  # lists all the colors
 
#Prompt
#export PS1="${COLOR_GREEN}\w$ ${COLOR_NC}"
export PS1="\w$ "
 
# Alias
alias ls='ls -G'
alias ll='ls -hl'
alias la='ls -a'
alias lla='ls -lah'
alias rproto='cd ~/Rsupport/gduck/branches/Web/front/proto'
alias rmain='cd ~/Rsupport/gduck/trunk/Web'
 
# history handling
#
# Erase duplicates
export HISTCONTROL=erasedups
# resize history size
export HISTSIZE=10000
# append to bash_history if Terminal.app quits
shopt -s histappend
