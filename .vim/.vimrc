"Configuration
set number
"set relativenumber
syntax on
syntax enable
set wrapscan
set number
set backspace=start,indent,eol
set t_Co=256
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set nocompatible
filetype off
filetype plugin indent on
set laststatus=2
set encoding=utf-8
set hidden
set nofoldenable
set display+=lastline
set nowrap
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
set completeopt=longest,menuone
set title
set ruler
set sb
set ttyfast
set lazyredraw
au InsertEnter * silent execute "!echo -en \<esc>[5 q"
au InsertLeave * silent execute "!echo -en \<esc>[2 q"


augroup vimrc_autocmds
    autocmd!
        " highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%120v.*/
        autocmd FileType python set nowrap
augroup END

"let g:rehash256 = 1
"let g:molokai_original = 1
let g:pymode_rope = 0
let g:pymode_doc = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0
let g:pymode_doc_key = 'K'
let g:pymode_lint = 0
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_write = 0
let g:pymode_virtualenv = 0
let g:pymode_breakpoint = 0
let g:pymode_breakpoint_key = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0
let python_highlight_all = 0
let g:Powerline_symbols = 'fancy'
let g:C_UseTool_cmake = "yes"
let g:C_UseTool_doxygen = "yes"
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" Mapping
map <F2> :NERDTreeToggle<CR>
map Y y$
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
nnoremap <C-L> :nohl<CR><C-L>
inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'c.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'neomake/neomake'
"Plugin 'scrooloose/syntastic'
"Plugin 'OmniSharp/omnisharp-vim'
call vundle#end()
