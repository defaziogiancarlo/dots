alias emacs='emacs -nw'
alias emcas='emacs -nw'
alias emasc='emacs -nw'
alias eamcs='emacs -nw'
alias eamsc='emacs -nw'

# color for ls
alias ls='ls --color=auto'

# less doesn't clear the screen
#export LESS='-X'

# man pages in color
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export CSCOPE_EDITOR='emacs -nw'
alias ll='cd ~/lustre-release'

# remove trailing whitespace
alias rtw="$LINUX_TREE/scripts/cleanfile"

alias mylfs="~/lustre-release/lustre/utils/lfs"
alias mylctl="~/lustre-release/lustre/utils/lctl"


PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs

__prompt_command() {
    local EXIT="$?"             # This needs to be first
 
    # using 256ish colors (6x6x6 and some other stuff)
    # you can view them using the colorgrid script
    # each color is "\[\033[01;38;5;<number>m\]" where <number> in [0,250]
    # there might be some way to do true rgb

    local HotPink="\[\033[01;38;5;201m\]"
    local Blue="\[\033[01;38;5;26m\]"
    local Turquoise="\[\033[01;38;5;29m\]"
    local ErrorRed="\[\033[01;38;5;196m\]"
    local Purple="\[\033[01;38;5;99m\]"    
    
    # reset color
    local RC='\[\e[0m\]'
    
    PS1=""

    # print the time |HH:MM:SS| (military time)
    #PS1+="${HotPink}|\t|${RC}"    

    # print user name
    PS1+="${Turquoise}\u${RC}"

    # print host and current directory
    PS1+="${RC}@${Blue}\h ${Purple}\W${RC}"

    # if last command had error, print it
    if [ $EXIT != 0 ]; then
	PS1+="${ErrorRed}($EXIT)${RC}"
    fi
    
    # end with $
    PS1+="${Blue}$ ${RC}"
}

