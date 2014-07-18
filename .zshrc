export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="rkj-repos"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export CLICOLOR_FORCE=true
export EDITOR=emacsclient
export MANPATH=/usr/local/share/man
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export TERM=xterm-256color

alias e="emacsclient -a '' -nw"
alias ec="emacsclient -a '' -c"
alias ohmy="source ~/.zshrc"
alias tree="find . -print | sed 's;[^/]*/;|___;g;s;___|; |;g'"

if [ -n "$INSIDE_EMACS" ]; then
  chpwd() { print -P "\033AnSiTc %d" }
  print -P "\033AnSiTu %n"
  print -P "\033AnSiTc %d"
fi

jingletron
