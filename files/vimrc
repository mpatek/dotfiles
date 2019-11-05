set nocompatible  " required
filetype off

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle. required
Plugin 'gmarik/Vundle.vim'

" Add all plugins here

Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'alvan/vim-closetag'
Plugin 'thalesmello/lkml.vim'
Plugin 'duganchen/vim-soy'
Plugin 'isRuslan/vim-es6'

" All plugins must be added before following line
call vundle#end()   " required
filetype plugin indent on    " required

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.json set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 noexpandtab autoindent fileformat=unix
au BufNewFile,BufRead *.sql set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab autoindent fileformat=unix
au BufNewFile,BufRead *.scala set autoindent noexpandtab tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.lkml set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix filetype=lkml
au BufNewFile,BufRead *.html set noexpandtab copyindent preserveindent softtabstop=0 shiftwidth=4 tabstop=4 textwidth=0 fileformat=unix

set encoding=utf-8

let python_highlight_all=1
syntax on

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

set nu

set term=screen-256color

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set laststatus=2

" remove trailing spaces on save
autocmd BufWritePre *.py :%s/\s\+$//e

let g:flake8_cmd="/home/mpatek/miniconda3/bin/flake8"

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

set nofoldenable
