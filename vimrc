set nocompatible

" Install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl --insecure -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  "autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall for any missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugInstall --sync | source $MYVIMRC | endif

call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'

" Tree explorer
Plug 'scrooloose/nerdtree'

" Plugin on GitHub
Plug 'tpope/vim-fugitive'

" Syntax checking
Plug 'scrooloose/syntastic'

" Statusline and tabline utility
Plug 'bling/vim-airline'

" Statusline and tabline utility
Plug 'itchyny/lightline.vim'

" Display tags
Plug 'majutsushi/tagbar'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plug 'L9'

" Fast file navigation
Plug 'wincent/command-t'

" tmux navigator
Plug 'christoomey/vim-tmux-navigator'

" Color schemes
Plug 'flazz/vim-colorschemes'

" Vim motions
Plug 'easymotion/vim-easymotion'

" Git gutter
Plug 'airblade/vim-gitgutter'

" Text filtering and alignment
Plug 'godlygeek/tabular'

" Insert mode completions with tab
Plug 'ervandew/supertab'

" Dash plugin
Plug 'rizzatti/dash.vim'

" Code completion
"Plug 'Valloric/YouCompleteMe'

" Jedi autocompletion
"Plug 'davidhalter/jedi-vim'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Display indent levels
Plug 'nathanaelkane/vim-indent-guides'

" Shell
Plug 'Shougo/vimshell.vim'

" Go
Plug 'fatih/vim-go'

" HTML5
Plug 'othree/html5.vim'

" Javascript
Plug 'pangloss/vim-javascript'

" JSON
Plug 'elzr/vim-json'

" JSX
Plug 'maxmellon/vim-jsx-pretty'

" Less
Plug 'groenewege/vim-less'

" Markdown
Plug 'tpope/vim-markdown'

" Python
Plug 'klen/python-mode'

" Rails
Plug 'tpope/vim-rails'

" Ruby
Plug 'vim-ruby/vim-ruby'

" Ruby endwise
Plug 'tpope/vim-endwise'

" Scala
Plug 'derekwyatt/vim-scala'

" TypeScript
Plug 'leafgarland/typescript-vim'

call plug#end()

syntax on

set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
