function mkcd {
    mkdir $1
    cd $1
}

export PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin/
export GOPATH=$HOME/src/Go/

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

autoload -Uz compinit
compinit

source ~/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme afowler
antigen bundle git
antigen bundle python
antigen apply

# virtualenvwrapper
source /usr/bin/virtualenvwrapper.sh

eval $(dircolors ~/.dircolors)

# Damn, I wish i could remember...
alias vim='nvim'

