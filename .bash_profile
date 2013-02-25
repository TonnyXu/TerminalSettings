if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

LSCOLORS=gxfxcxdxbxegedabagacad
export LSCOLORS

PATH=usr/local/Cellar:/usr/local/Cellar/bin:/usr/local/bin:/usr/local/sbin:$PATH:$HOME/bin:$GEM_HOME/bin
export PATH

