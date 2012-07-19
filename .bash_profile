# Include human readable colour shortcuts
if [ -f ~/.bash_colors ]; then . ~/.bash_colors; fi
if [ -z $HOST_COLOR ]; then $HOST_COLOR = ${BRIGHT_CYAN}; fi

SYSTEM_TYPE=$(uname)
if [ -f ~/.bash_variables ]; then source ~/.bash_variables; fi
if [ -f ~/.bashrc ]; then source ~/.bashrc; fi
source ~/.bash_custom
export PATH=/usr/local/bin:$PATH
