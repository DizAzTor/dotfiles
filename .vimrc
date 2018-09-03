set number
syntax on
syntax enable
set wrapscan
set backspace=start,indent,eol
set t_Co=256
set paste
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

filetype plugin indent on


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'Vimjas/vim-python-pep8-indent'
"Bundle 'Valloric/YouCompleteMe'
call vundle#end()

" Note: this works with VTE compatible terminals
" That is: (urxvt, st, xterm, terminator, gnome-terminal 3.x and other more)
" I use terminator and xterm. Sometimes st, it depends.
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Hide the status bar, copied from StackOverflow.
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>

