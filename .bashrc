alias shattuck='ssh defazio1@192.168.1.203'
alias alehouse='ssh defazio1@192.168.1.67'
alias emacs='emacs -nw'
alias emcas='emacs -nw'
alias emasc='emacs -nw'
alias eamcs='emacs -nw'
alias eamsc='emacs -nw'
#alias uu='cd ~/summer_2019/rescal-snow/scripts/utilities'
#alias data='cd ~/summer_2019/rescal-snow/data_runs'
#export RESCAL_SNOW_ROOT='/g/g13/defazio1/summer_2019/rescal-snow'

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
PATH=$PATH:~/bin:~/bin/scripts
alias tree='tree -C'
alias uu='cd /g/g0/defazio1/lustre-release/lustre/utils'
alias ll='cd /g/g0/defazio1/lustre-release'

# up to date Lustre repo
export LUSTRE_WC=/g/g0/defazio1/lustre-release
export LINUX_TREE=/g/g0/defazio1/linux

# remove trailing whitespace
alias rtw="$LINUX_TREE/scripts/cleanfile"

#echo "it's .bashrc time!"


alias lfs="${LUSTRE_WC}/lustre/utils/lfs"
alias lctl="${LUSTRE_WC}/lustre/utils/lctl"


PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs

__prompt_command() {
    local EXIT="$?"             # This needs to be first
 
    # using 256ish colors (6x6x6 and some other stuff)
    # you can view them using the colorgrid script
    # each color is "\[\033[01;38;5;<number>m\]" where <number> in [0,250]
    # there might be some way to do true rgb

    local HotPink="\[\033[01;38;5;201m\]"
    local Blue="\[\033[01;38;5;21m\]"
    local Turquoise="\[\033[01;38;5;29m\]"
    local ErrorRed="\[\033[01;38;5;196m\]"
    local Purple="\[\033[01;38;5;92m\]"    
    
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

alias python3.7='/usr/tce/bin/python3.7'

# add my go cli tool
PATH=$PATH:/g/g0/defazio1/lust
