#!/bin/zsh

rm -rf ~/.vim
rm ~/.dotfiles/vim-files
rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.zshrc

git clone git://github.com/robertmeta/vim-files.git

ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/vim-files ~/.vim
ln -s ~/.dotfiles/vim-files/.vimrc ~/.vimrc
