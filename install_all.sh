cp ./.git-flow-completion.sh $HOME/
cp ./.git-completion.sh $HOME/
cp ./.gitconfig $HOME/
cp ./.gitignore $HOME/
cp ./.bash_profile $HOME/
cp ./.bashrc $HOME/

if [ "`uname`" = "Linux" ]; then
  cp ./.dircolors $HOME/
fi

cp ./.gvimrc* $HOME/
cp ./.vimrc* $HOME/
