#! /bin/bash

echo "Installing vim and tmux..."

sudo apt-get install vim
sudo apt-get install tmux

echo "Installing Vundle..."

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Reconfiguring config files..."

rm -f ~/.vimrc && rm -f ~/.tmux.conf
mv $PWD ~/.vim 
cd ~/.vim
ln -s .vimrc ~/.vimrc
mv ~/.vim/.tmux.conf ~

echo "Done."
