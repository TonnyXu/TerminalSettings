if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

if [ "`uname`" = "Darwin" ]; then
  LSCOLORS=gxfxcxdxbxegedabagacad
  export LSCOLORS
elif [ "`uname`" = "Linux" ]; then
  eval `dircolors ~/.dircolors -b`
fi

if [ -d $HOME/.rbenv ]; then
  export GEM_HOME="$(rbenv prefix)"
  export GEM_PATH="$(rbenv prefix)"
fi

if [ -f '/usr/local/bin/brew' ]; then
  PATH=usr/local/Cellar:/usr/local/Cellar/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$GEM_HOME/bin:$PATH
  export PATH
else
  PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$GEM_HOME/bin:$PATH
  export PATH
fi

