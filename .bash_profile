if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

LSCOLORS=gxfxcxdxbxegedabagacad
export LSCOLORS

if [ -d $HOME/.rbenv ]; then
export GEM_HOME="$(rbenv prefix)"
export GEM_PATH="$(rbenv prefix)"
fi

PATH=usr/local/Cellar:/usr/local/Cellar/bin:/usr/local/bin:/usr/local/sbin:$PATH:$HOME/bin:$GEM_HOME/bin
export PATH

