#! /bin/bash

echo "Installing vim and tmux..."

sudo apt-get install vim
sudo apt-get install tmux

echo "Reconfiguring config files..."

rm -rf ~/.vim && rm -f ~/.vimrc && rm -r ~/.tmux.conf
ln -s ~/.vim/.vimrc ~/.vimrc
mv ~/.vim/.tmux.conf ~

echo "Installing Vundle..."

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Done."
