#! /bin/sh

if [ ! -d "#{home}/.janus" ]; then
  mkdir "#{home}/.janus"
else
  rm -rf "#{home}/.janus"
  mkdir "#{home}/.janus"
fi

# we will definitely have .janus ready 
git clone git@github.com:Lokaltog/powerline.git "#{home}/.janus/powerline"

# install janus, will move current .vim to .vim.old
curl -Lo- https://bit.ly/janus-bootstrap | bash

