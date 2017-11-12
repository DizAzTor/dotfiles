set number
syntax on
syntax enable
set wrapscan
set backspace=start,indent,eol
set t_Co=256
set nocompatible
filetype off
filetype plugin indent on
set laststatus=2
set encoding=utf-8
set hidden
set nofoldenable
set display+=lastline
set wrap
set linebreak
set showbreak=>\ \ \
set wildmenu
set showcmd
set hlsearch
source $VIMRUNTIME/mswin.vim
behave mswin
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set pastetoggle=<F11>
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showtabline=2
set completeopt=longest,menuone
set title
set sb
set paste
set ttyfast
set lazyredraw
set clipboard=unnamedplus
vmap <C-c> "py
nmap <C-c> "pyiw
vmap <C-p> "pp
nmap <C-p> "pP
imap <C-p> <Esc>"ppa

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-airline/vim-airline'
"call vundle#end()
filetype plugin indent on
