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
#alias cp='cp -i'
alias rm='rm -i'
alias cd='cd -P'
# color=always will cause a problem in git completion. color=auto will be fine.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias sshtonny='ssh tonny@www.totodotnet.net'

# Only for mac in office.
if [ ! -z "`uname -n|grep "voyagegroup.local"`" ]; then
  alias sshdev1='ssh t-xu@g6-dev01.ec2'
  alias sshstaff1='ssh t-xu@g6-staff01.ec2'
  alias sshpre1='ssh t-xu@g6-pre01.ec2'
  alias sshweb3='ssh t-xu@g6-web03.ec2'
  alias sshweb4='ssh t-xu@g6-web04.ec2'
  alias sshweb5='ssh t-xu@g6-web05.ec2'
  alias sshdevmini1='ssh genesixdev@genesixdev.local'
  alias sshdevmini2='ssh genesixdev@genesix-macmini.local'
fi

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

# Powerline is good for vim, but not so good for a shell
#source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
