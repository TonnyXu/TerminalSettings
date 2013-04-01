#! /bin/sh

# 1. bash
exec "./install_minimum.sh"

# 2. vim
# 2.1 install vundler
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# 2.2 install color pack and color scroll
if [ -z "`which wget`" ]; then
  wget "http://www.vim.org/scripts/download_script.php?src_id=18915" -O colorPack.zip && unzip colorPack.zip -d ~/.vim && rm -f colorPack.zip
  wget "http://www.vim.org/scripts/download_script.php?src_id=5966" -O ScrollColor.vim && mv ScrollColor.vim ~/.vim/plugin
fi

# 2.3 copy sample.vimrc to .vimrc
cp vundle.sample.vimrc ~/.vimrc

# 2.4 install vundles
vim +BundleInstall +qall

# DONE!
