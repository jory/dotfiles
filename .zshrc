export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="rkj-repos"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

ulimit -n 10240

export CLICOLOR_FORCE=true
export EDITOR=emacsclient
export MANPATH=/usr/local/share/man
export PATH=./node_modules/.bin:~/bin:/usr/local/sbin:/usr/X11/bin:$PATH
export TERM=xterm-256color

alias e="emacsclient -a '' -nw"
alias ec="emacsclient -a '' -c"
alias ohmy="source ~/.zshrc"
alias tree="find . -print | sed 's;[^/]*/;|___;g;s;___|; |;g'"

alias nuclear="./gradlew clean go cleanDeployWar && ./gradlew deployWar"
alias services="cd ~/src/lapetus/services/ && git pull && ./install-stable.sh && FETCH_DEBUG_CONSOLE=true && ./start"

if [ -n "$INSIDE_EMACS" ]; then
  chpwd() { print -P "\033AnSiTc %d" }
  print -P "\033AnSiTu %n"
  print -P "\033AnSiTc %d"
fi

jingletron
