function mkcd {
    mkdir $1
    cd $1
}

export PATH=$HOME/scripts/:$HOME/.npm-global/bin/:$HOME.gem/ruby/2.3.0/bin/:$HOME.cargo/bin:$HOME/.local/bin/:$HOME/.local/lib:$HOME/.pub-cache/bin:$PATH

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

autoload -Uz compinit
compinit

# source ~/.antigen/antigen.zsh
# antigen use oh-my-zsh
# antigen theme lambda
# antigen bundle git
# antigen bundle python
# antigen apply
source ~/.antigen/antigen.zsh
# antigen use oh-my-zsh
antigen theme afowler
antigen bundle git
antigen bundle python
antigen apply

alias ls='ls --color=auto'
alias vim=nvim

# if ! pgrep -u $USER ssh-agent > /dev/null; then
#     ssh-agent > ~/.ssh-agent-thing
# fi
# if [[ "$SSH_AGENT_PID" == "" ]]; then
#     eval $(<~/.ssh-agent-thing)
# fi
# ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'

# OPAM configuration
. /home/georgios/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
