if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

LSCOLORS=gxfxcxdxbxegedabagacad
export LSCOLORS

export GEM_HOME="$(rbenv prefix)"
export GEM_PATH="$(rbenv prefix)"

PATH=usr/local/Cellar:/usr/local/Cellar/bin:/usr/local/bin:/usr/local/sbin:$PATH:$HOME/bin:$GEM_HOME/bin
export PATH

