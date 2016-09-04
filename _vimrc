" My configuration file for vim
set number
set autoindent
set nobackup
set mouse=a
set incsearch
set ignorecase
set nocompatible
set autowrite
set tabstop=2
set shiftwidth=2
set expandtab
set fenc=utf8
set enc=utf8

set backspace=2
set backspace=indent,eol,start

" hide gui toolbars etc.
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Set up colorscheme
syntax on

set background=light
set guifont=Consolas:h11:cEASTEUROPE
colorscheme Sunburst

function InsertTabWrapper()
	let col = col('.') - 1

	if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	else
		return "\<c-p>"
	endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" Plugins:

filetype off

set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tikhomirov/vim-glsl.git'
Plugin 'shougo/vimproc.git'
Plugin 'shougo/vimshell.git'

call vundle#end()
filetype plugin indent on

