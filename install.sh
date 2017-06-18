#! /bin/bash

echo "Installing vim and tmux..."

sudo apt-get install vim
sudo apt-get install tmux

echo "Reconfiguring vim and tmux..."

rm -f ~/.vimrc && rm -f ~/.tmux.conf
mv .netrwhist ~/.vim/.netwrhist
mv ~/.vim/.tmux.conf ~
mv .vimrc ~/.vim/.vimrc
mv * ~/.vim 
rm -rf $PWD
cd ~/.vim
ln -s .vimrc ~/.vimrc

echo "Installing Vundle..."

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Done."
