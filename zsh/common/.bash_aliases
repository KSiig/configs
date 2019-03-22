alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias l='ls -l'
alias ll='ls -la'

if command -v kubectl
then
	alias kc='kubectl'
	alias helm='sudo helm'
fi

if command -v tmux
then
	alias tmux='tmux -f $HOME/.tmux.conf'
	alias tmuxs='tmux-session save'
	alias tmuxr='tmux-session restore'
fi
