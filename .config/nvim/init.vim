"set runtimepath=~/dev/builds/neovim/build/runtime/
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
