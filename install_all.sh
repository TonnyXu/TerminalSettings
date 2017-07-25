# run janus vim installation
./install_janus_vim.sh

cp ./.git-flow-completion.sh $HOME/
cp ./.git-completion.sh $HOME/
cp ./.git-prompt.sh $HOME/
cp ./.gitconfig $HOME/
cp ./.gitignore $HOME/
cp ./.bashrc $HOME/
cp ./.bash_profile $HOME/

if [ "`uname`" = "Linux" ]; then
  cp ./.dircolors $HOME/
fi

cp ./.gvimrc* $HOME/
cp ./.vimrc* $HOME/


# install brew(xcode is necessary)
installTool() {
  if hash $1 2>/dev/null; then
    echo "Found $1"
  else
    echo "Not found $1, $2"
    exit 1
  fi
}

installOrUpdateTool() {
  if hash $1 2>/dev/null; then
    echo "Found $1, run $2"
    $2
  else
    echo "    running $3"
    $3
  fi
}

installTool xcode-select "please install Xcode at first"
installOrUpdateTool brew "brew update" "/usr/bin/ruby -e \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)\""
installOrUpdateTool rbenv "" "brew install rbenv ruby-install"
installOrUpdateTool pyenv "" "brew install pyenv"
installOrUpdateTool node "" "brew install node"
