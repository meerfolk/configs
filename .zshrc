source /usr/local/share/antigen/antigen.zsh

export NVM_AUTO_USE=true
export LC_ALL=en_US.UTF-8

antigen use oh-my-zsh

antigen bundle git
antigen bundle vi-mode
antigen bundle npm
antigen bundle docker
antigen bundle lukechilds/zsh-nvm

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply

# disable prompts
prompt_context() {}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

masterdiff() {
  vimdiff $1 <(git show master:$1)
}

alias -g J='| python -m json.tool' 

stty -ixon

function zle-line-init zle-keymap-select {
    VIM_NORM="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    VIM_INS="%{$fg_bold[yellow]%} [% INSERT]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_NORM}/(main|viins)/$VIM_INS} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1
export DISABLE_AUTO_TITLE="true"

export TERM=screen-256color
export GOPATH=$HOME/go
