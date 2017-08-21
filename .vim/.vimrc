set nocompatible
filetype indent plugin on
syntax enable
"set background=dark
let g:solarized_termcolors=256
"colorscheme monokai
set hidden
let python_highlight_all = 1

set nofoldenable
set display+=lastline
set nowrap

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
