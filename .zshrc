export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="rkj-repos"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ `uname` == "Darwin" ]]; then
  export NVM_DIR=~/.nvm

  nvm="$(brew --prefix nvm)/nvm.sh";

  if [[ -a $nvm ]]; then
      source $nvm
  fi

  ulimit -n 10240
fi

export CLICOLOR_FORCE=true
export EDITOR=emacsclient
export ALTERNATE_EDITOR=emacs
export MANPATH=/usr/local/share/man
export PATH=./node_modules/.bin:~/bin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin:$PATH
export TERM=xterm-256color

alias e="emacsclient -a '' -nw"

ec() {
    nohup emacsclient -a '' -c $@ &
}

alias ohmy="source ~/.zshrc"
alias tree="find . -print | sed 's;[^/]*/;|___;g;s;___|; |;g'"

alias atlas="~/src/atlas/"
alias lapetus="~/src/lapetus/"

alias nuclear="./gradlew clean go cleanDeployWar && ./gradlew deployWar"
alias services="cd ~/src/lapetus/services/ && git pull && ./install-stable.sh && FETCH_DEBUG_CONSOLE=true && ./start"

alias lsxl="gfind . -regex '.*\(\.git\|node_modules\)' -prune -o -printf '%b\t%h/%f\n' | sort -n | grep -v '^0'"
alias wln="gfind ./* -mindepth 1 -maxdepth 2 -lname '*'"

alias llab="lab -m9000000 -v"
alias mlab="MOCK=true llab"

alias dlab="node-debug -p 9292 lab -m9000000 -v"
alias dmlab="MOCK=true dlab"

if [ -n "$INSIDE_EMACS" ]; then
  chpwd() { print -P "\033AnSiTc %d" }
  print -P "\033AnSiTu %n"
  print -P "\033AnSiTc %d"
fi

jingletron
