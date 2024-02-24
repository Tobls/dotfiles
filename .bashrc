# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias pacmanunused='pacman -Qtdq'
alias pacmanclean='sudo pacman -Rns $(pacman -Qtdq)'

alias vim='nvim'

alias gs='git status'
alias gc='git commit -m $1'
alias ga='git add $1'

alias ls="lsd"
alias lt="ls --tree"
alias l="ls -l"
alias ll="ls -la"

alias homeserver="ssh tobey@192.168.178.222"

alias nautilus="nautilus ."
alias photo="loupe"
alias pdf="evince"
alias files="nautilus"

PS1=' \[\e[38;5;31m\]󰣇 \[\e[38;5;48m\]\u@\h \[\e[38;5;81m\]\W \[\e[95m\]> \[\e[0m\]'

if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi

eval "$(zoxide init --cmd cd bash)"

eval "$(starship init bash)"
export STARSHIP_CONFIG=/home/tobey/.config/starship/starship.toml
. "$HOME/.cargo/env"
