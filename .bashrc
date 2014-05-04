export HISTCONTROL=ignoreboth
export HISTSIZE=50000

export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
export EDITOR="vim"

# This is a Shell AutoCompletion support for git.
source ~/.git-completion.sh
source ~/.git-flow-completion.sh

alias ll='ls -lFGhctr'
alias mv='mv -i'
alias rm='rm -i'
alias cd='cd -P'
# color=always will cause a problem in git completion. color=auto will be fine.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias sshtonny='ssh tonny@www.totodotnet.net'


if [ -z "$PS1" ]; then
  return
fi
export PS1='\[\e[35;40m\]\u\[\e[0m\]@\[\e[36;40m\]\h\[\e[0m\e[37;40m\]\A\[\e[0m\] \[\e[36;40m\]\W$(__git_ps1 " (%s)") \[\e[0m\]$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

# rbenv's path
if [ -d $HOME/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# Heroku's path
if [ -d "/usr/local/heroku/bin" ]; then
  export PATH="/usr/local/heroku/bin:$PATH"
fi

# NodeJS NPM's path
if [ ! -z "which npm" ]; then
  export PATH="/usr/local/share/npm/bin:$PATH"
fi

