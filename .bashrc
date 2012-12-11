#export PAGER="less"
export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
export EDITOR="vim"
# export PYTHONHOME="/Library/Frameworks/Python.framework/Versions/2.7"
# export PYTHONPATH="/Library/Frameworks/Python.framework/Versions/2.7"

# GREP_OPTIONS='--color=always' has problem with CMake, will cause CMake to fail.
#export GREP_OPTIONS='--color=always'
#export GREP_COLOR='01;33'
# By setting LC_MESSAGES=C, almost all the command's output language will be english.
#export LC_MESSAGES="en_EN.UTF-8"
#export LANG="en_EN.UTF-8"
#export LC_ALL="en_EN.UTF-8"
#export PERL_BADLANG=0

# This is a Shell AutoCompletion support for git.
source ~/.git-completion.sh
source ~/.git-flow-completion.sh

alias ll='ls -lFGhctr'
alias mv='mv -i'
#alias cp='cp -i'
alias rm='rm -i'
alias cd='cd -P'
alias grep='grep --color=always'
alias sshtonny='ssh tonny@www.totodotnet.net'
alias sshg6dev1='ssh t-xu@g6-dev01.ec2'
alias sshg6staff1='ssh t-xu@g6-staff01.ec2'
alias sshg6pre1='ssh t-xu@g6-pre01.ec2'
alias sshg6web1='ssh t-xu@g6-web01.ec2'
alias sshg6web2='ssh t-xu@g6-web02.ec2'
alias sshg6web3='ssh t-xu@g6-web03.ec2'
alias sshg6web4='ssh t-xu@g6-web04.ec2'
alias sshdev1='ssh t-xu@g6-dev01.ec2'
alias sshstaff1='ssh t-xu@g6-staff01.ec2'
alias sshpre1='ssh t-xu@g6-pre01.ec2'
alias sshweb1='ssh t-xu@g6-web01.ec2'
alias sshweb2='ssh t-xu@g6-web02.ec2'
alias sshweb3='ssh t-xu@g6-web03.ec2'
alias sshweb4='ssh t-xu@g6-web04.ec2'

export PS1='\[\e[35;40m\]\u\[\e[0m\]@\[\e[36;40m\]\h\[\e[0m\e[37;40m\]\A\[\e[0m\] \[\e[36;40m\]\W$(__git_ps1 " (%s)") \[\e[0m\]: '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
