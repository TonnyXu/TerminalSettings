# TerminalSettings

Personal backup for my terminal settings

## Content List

1. `.bash_profile` + `.bashrc`
2. `.gitcompletion` + `.gitflow.completion` + `.gitconfig` + `.gitignore`
3. Homebrew `PATH`
  * wget
  * curl
  * rbenv
  * ruby-build
  * python
  * ack
  * cmake
  * tcptrace
  * tree
4. vim + MacVim
  * [janus](https://github.com/carlhuda/janus) for OSX
  * [vundle](https://github.com/gmarik/vundle) for non-OSX

## Installation

### For Mac OSX

1. `./install_all.sh`
2. `./install_janus_vim.sh`

### For Linux

1. `./install_bash_vim.sh`

## Version

* Ver 0.0.4 - Apr 03, 2013 - Added condition for alias in office, add
npm path to $PATH
* Ver 0.0.3 - Apr 01, 2013 - Added powerline for vim
* Ver 0.0.2 - Apr 01, 2013 - Added vundle support
* Ver 0.0.1 - Dec 10, 2012 - Initial commit

## TBD

1. Integrate the Linux/Mac installation script to one.
  * added `setup.sh` and `setup.rb`. basically, I will use `setup.rb` to
maintain all the things, but I need some time to learn ruby.

