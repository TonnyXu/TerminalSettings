#! /bin/sh

if [ "`uname`" = "Darwin" ]; then
  echo "You are using a Mac"
else
  echo "You are using `uname`"
fi
