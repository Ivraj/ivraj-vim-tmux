" for Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install yaml highlighting
Plugin 'chase/vim-ansible-yaml'

" Solarized
Plugin 'sickill/vim-monokai'
Plugin 'altercation/vim-colors-solarized'

" Syntax highlighting
Plugin 'scrooloose/syntastic'

" Commenter plugin
Plugin 'scrooloose/nerdcommenter'

call vundle#end()

" Appearance
syntax enable

" Searching
set incsearch
set hlsearch

" for Commenter
filetype plugin on

colorscheme monokai

" Spacing
set tabstop=4 "4 spaces for tab
set softtabstop=4
set shiftwidth=4
set expandtab " tab with spaces
set lazyredraw " redraw only when we need to.
set showmatch "Highlight the closing parend
set number
set autoindent
set tw=79

" Text
set pastetoggle=<F2> "Hit f2 to enter paste mode

" Key remapping
let mapleader="\<Space>" "Use space bar as the leader key

" Move to the beginning or end of the line
nnoremap B ^
nnoremap E $
inoremap jk <Esc>
vnoremap jk <Esc>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nmap ; :

"Add in most recent command
nnoremap <silent> <leader>m :CtrlPMRU<CR>

" Decrease the timeout
set timeoutlen=200

"Replace common functions for writing
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>s :vs<CR>
nnoremap <Leader>v :e ~/.vimrc<CR>

" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
