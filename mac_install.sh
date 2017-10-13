#! /bin/bash

echo "Installing vim and tmux..."

brew install vim
brew install tmux

echo "Reconfiguring vim and tmux..."

rm -rf ~/.vim rm -f ~/.vimrc && rm -f ~/.tmux.conf
mkdir ~/.vim
mv .netrwhist ~/.vim/.netwrhist
mv .tmux.conf ~/.tmux.conf
mv .vimrc ~/.vim/.vimrc
mv * ~/.vim 
rm -rf $PWD
cd ~/.vim
cp .vimrc ~/.vimrc

echo "Setting vim as default editor..."

export EDITOR=vim

echo "Installing Vundle..."

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Done."
