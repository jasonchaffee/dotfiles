set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Tree explorer
Plugin 'scrooloose/nerdtree'

" Plugin on GitHub
Plugin 'tpope/vim-fugitive'

" Syntax checking
Plugin 'scrooloose/syntastic'

" Statusline and tabline utility
Plugin 'bling/vim-airline'

" Statusline and tabline utility
Plugin 'itchyny/lightline.vim'

" Display tags
Plugin 'majutsushi/tagbar'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Fast file navigation
Plugin 'wincent/command-t'

" tmux navigator
Plugin 'christoomey/vim-tmux-navigator'

" Color schemes
Plugin 'flazz/vim-colorschemes'

" Vim motions
Plugin 'easymotion/vim-easymotion'

" Git gutter
Plugin 'airblade/vim-gitgutter'

" Text filtering and alignment
Plugin 'godlygeek/tabular'

" Insert mode completions with tab
Plugin 'ervandew/supertab'

" Dash plugin
Plugin 'rizzatti/dash.vim'

" Code completion
Plugin 'Valloric/YouCompleteMe'

" Jedi autocompletion
Plugin 'davidhalter/jedi-vim'

" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" Display indent levels
Plugin 'nathanaelkane/vim-indent-guides'

" Shell
Plugin 'Shougo/vimshell.vim'

" Coffescript
Plugin 'kchmck/vim-coffee-script'

" Go
Plugin 'fatih/vim-go'

" HTML5
Plugin 'othree/html5.vim'

" Javascript
Plugin 'pangloss/vim-javascript'

" JSON
Plugin 'elzr/vim-json'

" Less
Plugin 'groenewege/vim-less'

" Markdown
Plugin 'tpope/vim-markdown'

" Python
Plugin 'klen/python-mode'

" Rails
Plugin 'tpope/vim-rails'

" Ruby
Plugin 'vim-ruby/vim-ruby'

" Ruby endwise
Plugin 'tpope/vim-endwise'

" Scala
Plugin 'derekwyatt/vim-scala'

syntax on

if $TERM == "xterm-256color"
  set t_Co=256
endif

"if has('gui_running')
"  set background=light
"else
"  set background=dark
"endif

set background=dark
colorscheme solarized

set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

au BufNewFile,BufRead *.gradle set filetype=groovy
