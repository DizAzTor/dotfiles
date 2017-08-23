set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()
filetype plugin indent on
filetype indent plugin on
syntax enable
"set background=dark
let g:solarized_termcolors=256
colorscheme monokai
set hidden
let python_highlight_all = 1

set nofoldenable
set display+=lastline
set nowrap

inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

autocmd BufWritePre * %s/\s\+$//e
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

set backspace=indent,eol,start

set autoindent

set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=

set mouse=a

set cmdheight=2

set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab

map Y y$

nnoremap <C-L> :nohl<CR><C-L>
