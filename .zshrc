# Custom zsh prompt
PROMPT='%F{blue}%~%f %F{red}$%f '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# Set vim as editor
export EDITOR='vim'

# Aliases for common commands
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias python=/opt/homebrew/bin/python3
alias pip=/opt/homebrew/bin/pip3
alias serve="python -m http.server 8000 --bind 127.0.0.1"
alias c=clear

