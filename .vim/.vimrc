filetype off
syntax on
set wrapscan
set number
set backspace=start,indent,eol
set t_Co=256
filetype indent plugin on
syntax enable
"set background=dark
let g:solarized_termcolors=256
colorscheme wombat256mod
set hidden
let python_highlight_all = 1
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set nocompatible
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
call vundle#end()

augroup vimrc_autocmds
    autocmd!
        " highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%120v.*/
        autocmd FileType python set nowrap
augroup END

let g:pymode_rope = 1
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0

map <F2> :NERDTreeToggle<CR>


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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showtabline=2

map Y y$

nnoremap <C-L> :nohl<CR><C-L>
