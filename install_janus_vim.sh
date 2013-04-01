#! /bin/sh

if [ ! -d "${HOME}/.janus" ]; then
  mkdir "${HOME}/.janus"
else
  rm -rf "${HOME}/.janus"
  mkdir "${HOME}/.janus"
fi

# we will definitely have .janus ready 
git clone git@github.com:Lokaltog/vim-powerline.git "${HOME}/.janus/powerline"

# install janus, will move current .vim to .vim.old
if [ -d "${HOME}/.vim.old" ]; then
  rm -rf "${HOME}/.vim.old"
fi

curl -Lo- https://bit.ly/janus-bootstrap | bash

