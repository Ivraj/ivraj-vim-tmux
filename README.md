# ivraj-vim-tmux
I'm storing my vim and tmux config files on git for access anywhere. Feel free
to take anything and everything you like. 


### How to install
Clone in the repo and then link the .vimrc to your home directory.
* ```rm -rf ~/.vim && rm -f ~/.vimrc``` (remove the existing vimrc and .vim folder)
* ```git clone git@github.com:Ivraj/ivraj-vim-tmux.git ~/.vim``` (clone in the git repo)
* ```git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim``` (make sure we have the most recent version of vundle)
* ```ln -s ~/.vim/.vimrc ~/.vimrc``` (symlink the vimrc from the repo to your home vimrc)

The above commands can all be excuted together with the following command. 
```rm -rf ~/.vim && rm -f ~/.vimrc is && git clone git@github.com:Ivraj/ivraj-vim-tmux.git ~/.vim && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && ln -s ~/.vim/.vimrc ~/.vimrc```
