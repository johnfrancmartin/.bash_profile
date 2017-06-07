#-----------------------------------------------------------------------------------
# Variable Setup
#---------------

# Set colour variables
BLACKT="\[\033[0;30m\]"
BLACKB="\[\033[1;30m\]"
WHITET="\[\033[0;37m\]"
WHITEB="\[\033[1;37m\]"
REDT="\[\033[0;31m\]"
REDB="\[\033[1;31m\]"
GREENT="\[\033[0;32m\]"
GREENB="\[\033[1;32m\]"
BLUET="\[\033[0;34m\]"
BLUEB="\[\033[1;34m\]"
YELLOWT="\[\033[38;5;011m\]"
YELLOWB="\[\033[48;5;011m\]"
ORANGET="\[\033[38;5;208m\]"
ORANGEB="\[\033[48;5;208m\]"
PURPLET="\[\033[0;35m\]"
PURPLEB="\[\033[1;35m\]"
CYANT="\[\033[0;36m\]"
CYANB="\[\033[1;36m\]"

#-----------------------------------------------------------------------------------
# Alis Setup
#-----------

alias ls='ls -GFh'

alias gits='git status'

#-----------------------------------------------------------------------------------
# Function Setup
#---------------

# Get Git branch of current directory
git_branch () {
    if git rev-parse --git-dir >/dev/null 2>&1
        then echo -e ""$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
    else
        echo ""
    fi
}

# Set a specific color for the status of the Git repo
git_color() {
    if [[ $(gits) == *'Not a git repository'* ]]
        then echo "" # nothing
    else
        if [[ $(gits) == *'working tree clean'* ]]
            then echo -e $GREENT # red if need to commit
        elif [[ $(gits) == *'Your branch is ahead'* ]]
                then echo -e $YELLOWT # yellow if need to push
        else
            echo -e $REDT # else green
        fi
    fi
}



export PS1="$PURPLET\h: 🍵  $ORANGET\W $WHITET[$(git_color)$(git_branch)$WHITET] \$ $BLACKT"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


docs(){
  cd /Users/John.Franc.Martin@ibm.com/Documents
}
