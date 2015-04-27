
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin on GitHub
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Fast file navigation
Plugin 'wincent/command-t'

syntax on

if $TERM == "xterm-256color"
  set t_Co=256
endif

colorscheme Tomorrow-Night-Blue

set number

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

au BufNewFile,BufRead *.gradle set filetype=groovy

