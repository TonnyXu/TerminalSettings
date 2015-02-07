if [ "`uname`" = "Linux" ]; then
  cp ./.dircolors $HOME/
fi
cp ./.bash_profile $HOME/
cp ./.bashrc $HOME/
cp ./.gitignore $HOME/
cp ./.git-flow-completion.sh $HOME/
cp ./.git-completion.sh $HOME/
echo "Files related to vim is not copied"
