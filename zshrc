#PATH/ENV
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/pgsql/bin:~/.cabal/bin:/usr/local/Cellar/python/2.7.1/bin/:/usr/local/share/npm/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/X11/lib/pkgconfig
export PGDATA=/usr/local/pgsql/data
export EDITOR=vim

#OHMYZSH
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="cxlt"
plugins=(rails git ruby)
source $ZSH/oh-my-zsh.sh

#SETTINGS
export CASE_SENSITIVE="true"
export DISABLE_AUTO_UPDATE="true"
export LANG="en_US.UTF-8"
export RXVT_SOCKET=$HOME/.rxvt-unicode-durindana
setopt prompt_subst
unsetopt auto_name_dirs
autoload -U compinit
compinit -C

#SOCRATA
export OPSCODE_USER=cxlt
export MAVEN_OPTS=-Xmx2048m
alias ord1="export DOMAIN=ord1.socrata.com"
alias sea1="export DOMAIN=sea1.socrata.com"
vm() { TERM=rxvt ssh cxlt@vm$1.$DOMAIN }
util() { TERM=rxvt ssh cxlt@util$1.$DOMAIN }
lb() { TERM=rxvt ssh cxlt@lb$1.$DOMAIN }
metadb() { ssh cxlt@metadb$1.$DOMAIN }

#ALIASES
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .......='cd ../../../../../../'
alias ll='ls -l'
alias git='noglob git'
alias ftfy=fc
acks() { ack $1 -G 'dev-server|packages|tiny_mce' --invert-file-match }
ackt() { ack $1 -G 'test|tests' --invert-file-match }

#AUTOJUMP (via brew)
if [ -f `brew --prefix`/etc/autojump.zsh ]; then
  . `brew --prefix`/etc/autojump.zsh
fi

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

