# ivraj-vim-tmux
I'm storing my vim and tmux config files on git for easy access. Feel free to
take whatever. 


### How to Install

First, clone and `cd` into this repository using the following commands.

````
git clone https://github.com/Ivraj/ivraj-vim-tmux.git
cd ivraj-vim-tmux
````

#### Easy Install
I've added scripts for easy of installation. For installs on Debian based OSs
use the first command. For installs on Mac OS, use the second command. Note
that the Mac OS command hasn't been tested yet.

````
# For Debian OSs
./linux_install.sh

# For Mac OSs
./mac_install.sh
````

You may have to hit "y" in order to comfirm the vim and/or tmux install. You
may also have to hit "Enter" when the script is installing the Vundle packages. 

#### Manual Installation
First, make sure that you have vim and tmux installed. If not, they can be
installed on Debian systems with the following commands.

````
# Install commands on Debian based OSs
sudo apt-get install vim
sudo apt-get install tmux

# Install commands on Mac OSs
brew install vim
brew install tmux
````

We'll start off by removing previous config files, and then copying in the
files from git. 

* ````rm -rf ~/.vim && rm -f ~/.vimrc && rm -r ~/.tmux.conf```` (remove the existing vimrc and .vim folder)
* ````git clone https://github.com/Ivraj/ivraj-vim-tmux.git/ ~/.vim```` (clones vim files)
* ````mv ~/.vim/.tmux.conf ~```` (moves .tmux.conf)
* ````git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim```` (make sure we have the most recent version of vundle)
* ````cp ~/.vim/.vimrc ~/.vimrc```` (symlink the vimrc from the repo to your home vimrc)
* ````vim +PluginInstall +qall```` (installs the vundle plugins)

The above 6 commands can all be excuted together with the following command. 

````sudo rm -rf ~/.vim && rm -f ~/.vimrc is && rm -rf ~/.tmux.conf && git clone git@github.com:Ivraj/ivraj-vim-tmux.git ~/.vim && mv ~/.vim/.tmux.conf ~ && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && cp ~/.vim/.vimrc ~/.vimrc && vim +PluginInstall +qall````

And boom, you're done :P
