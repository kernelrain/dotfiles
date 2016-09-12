function mkcd {
    mkdir $1
    cd $1
}

export PATH=$PATH:$HOME.gem/ruby/2.3.0/bin/:$HOME.cargo/bin
export GOPATH=$HOME/src/Go/

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

autoload -Uz compinit
compinit

autoload -U promptinit
promptinit
prompt walters

# source ~/.antigen/antigen.zsh
# antigen use oh-my-zsh
# antigen theme lambda
# antigen bundle git
# antigen bundle python
# antigen apply
source ~/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme afowler
antigen bundle git
antigen bundle python
antigen apply

# virtualenvwrapper
source /usr/bin/virtualenvwrapper.sh

eval $(dircolors ~/.dircolors)

alias ls='ls --color=auto'

if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval $(<~/.ssh-agent-thing)
fi
ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'
# Damn, I wish i could remember...
alias vim='nvim'

# OPAM configuration
. /home/georgios/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
