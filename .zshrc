# ls
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
# cd
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
# git
alias ga='git add'
alias gd='git diff'
alias gst='git status'
alias gsw='git switch'
alias gb='git branch'
alias gc='git commit -m'
alias gl='git log'
# python
alias python="python3"
alias pip='pip3'
alias venv='python3 -m venv'
alias poetryvenv='poetry config virtualenvs.in-project true'
# yabai & skhd
alias ysstart='yabai --start-service && skhd --start-service'
alias ysstop='yabai --stop-service && skhd --stop-service'
alias ysrestart='yabai --restart-service && skhd --restart-service'

# pathes"
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:/usr/local/texlive/2024/bin/universal-darwin
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="$HOME/.local/bin:$PATH"

# zsh-completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi