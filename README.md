# ivraj-vim-tmux
I'm storing my vim and tmux config files on git for easy access. Feel free to
take whatever. 


### How to Install
First, make sure that you have vim and tmux installed. If not, they can be
installed on Debian systems with the following commands.

````
sudo apt-get install vim
sudo apt-get install tmux
````

We'll start off by removing previous config files, and then copying in the
files from git. 

* ````rm -rf ~/.vim && rm -f ~/.vimrc && rm -r ~/.tmux.conf```` (remove the existing vimrc and .vim folder)
* ````git clone git@github.com:Ivraj/ivraj-vim-tmux.git/ ~/.vim```` (clones vim files)
* ````mv ~/.vim/.tmux.conf ~```` (moves .tmux.conf)
* ````git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim```` (make sure we have the most recent version of vundle)
* ````ln -s ~/.vim/.vimrc ~/.vimrc```` (symlink the vimrc from the repo to your home vimrc)
* ````vim +PluginInstall +qall```` (installs the vundle plugins)

The above 6 commands can all be excuted together with the following command. 

````sudo rm -rf ~/.vim && rm -f ~/.vimrc is && rm -rf ~/.tmux.conf && git clone git@github.com:Ivraj/ivraj-vim-tmux.git ~/.vim && mv ~/.vim/.tmux.conf ~ && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && ln -s ~/.vim/.vimrc ~/.vimrc && vim +PluginInstall +qall````

And boom, you're done :PPPP
