alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias l='ls -l'
alias ll='ls -la'

if hash > /dev/null kubectl
then
	alias kc='kubectl'
	alias helm='sudo helm'
fi

if hash > /dev/null tmux
then
	alias tmux='tmux -f $HOME/.tmux.conf'
	alias tmuxs='tmux-session save'
	alias tmuxr='tmux-session restore'
fi
