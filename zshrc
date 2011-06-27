#PATH/ENV
export PATH=/usr/local/bin:/usr/local/pgsql/bin:~/.cabal/bin:$PATH
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
export OPSCODE_USER=clinttseng
export MAVEN_OPTS=-Xmx2048m
alias ord1="export DOMAIN=ord1.socrata.com"
alias sea1="export DOMAIN=sea1.socrata.com"
vm() { ssh cxlt@vm$1.$DOMAIN }
util() { ssh cxlt@util$1.$DOMAIN }
lb() { ssh cxlt@lb$1.$DOMAIN }
metadb() { ssh cxlt@metadb$1.$DOMAIN }
fetch_build() { wget "http://hudson.sea1.socrata.com/job/CoreServer/$1/artifact/core-http/target/scala_2.8.0/core-http_2.8.0-1.0.0.war"; }

#ALIASES
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .......='cd ../../../../../../'
alias ll='ls -l'
alias git='noglob git'

#DIRMARKS
m1() { pwd > ~/.dirmarks/m1 }
m2() { pwd > ~/.dirmarks/m2 }
m3() { pwd > ~/.dirmarks/m3 }
m4() { pwd > ~/.dirmarks/m4 }
m5() { pwd > ~/.dirmarks/m5 }
alias g1='cd `cat ~/.dirmarks/m1`'
alias g2='cd `cat ~/.dirmarks/m2`'
alias g3='cd `cat ~/.dirmarks/m3`'
alias g4='cd `cat ~/.dirmarks/m4`'
alias g5='cd `cat ~/.dirmarks/m5`'

#DIRS
alias gp='cd ~/Documents/Programming'

#AUTOJUMP (via brew)
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

