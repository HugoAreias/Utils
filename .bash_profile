if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh

PS1='\u@\h:\W$(__git_ps1 " (%s)")\$ '
