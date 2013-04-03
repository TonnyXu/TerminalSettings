#! /bin/sh

if [ "`uname`" = "Darwin" ]; then
  echo "You are using a Mac"
elif [ "`uname`" = "Linux" ]; then
  echo "You are using Linux"
else
  echo "You are runing this script on non-Mac, non-Linux system, which is not supported yet."
fi


