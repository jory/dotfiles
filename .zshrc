ZSH=$HOME/.oh-my-zsh
ZSH_THEME="rkj-repos"

source $ZSH/oh-my-zsh.sh

export CLICOLOR_FORCE=true
export EDITOR=emacsclient
export NODE_PATH=$NODE_PATH:/usr/local/share/npm/lib/node_modules:/usr/local/lib/node_modules
export PATH=/usr/local/share/npm/bin:~/bin:~/.rbenv/shims:~/bin/adt-bundle-mac-x86_64-20130514/sdk/platform-tools:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export CHROME_BIN='/Applications/Browsers/Google Chrome.app/Contents/MacOS/Google Chrome'
export RI='--format ansi'
export TERM=xterm-256color

alias e="emacsclient -a '' -nw"

alias tree="find . -print | sed 's;[^/]*/;|___;g;s;___|; |;g'"

alias fk="ps a | grep 'sidekiq' | grep -v 'grep' | cut -f1 -d' ' | xargs kill -9"

alias sample='for i in *.sample; do cp -- "$i" "${i%.sample}"; done'

alias deps="rm -rf bower_components components node_modules && npm install && bower install"

if [ -n "$INSIDE_EMACS" ]; then
  chpwd() { print -P "\033AnSiTc %d" }
  print -P "\033AnSiTu %n"
  print -P "\033AnSiTc %d"
fi

# Enables shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

jingletron
