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
let g:onedark_termcolors=256
set background=dark
if (has("termguicolors"))
  set termguicolors
endif
let base16colorspace=256
"colorscheme onedark
colorscheme spacegray
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
set cursorline
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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
source $VIMRUNTIME/mswin.vim
behave mswin

" meh
"au InsertEnter * silent execute "!echo -en \<esc>[5 q"
"au InsertLeave * silent execute "!echo -en \<esc>[2 q"


augroup vimrc_autocmds
    autocmd!
        " highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%120v.*/
        autocmd FileType python set nowrap
augroup END

"let g:rehash256 = 1
"let g:molokai_original = 1
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_elixir_checker = 1
" let g:syntastic_elixir_checkers = ["elixir"]
"
autocmd! BufWritePost * Neomake
let g:neomake_elixir_enabled_makers = ['mix', 'credo', 'dogma']

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" let g:github_access_token = ""
" let g:alchemist#elixir_erlang_src = "/Users/amacgregor/Projects/Github/alchemist-source"
let g:alchemist_tag_disable = 1
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
" let g:languagetool_jar  = '/opt/languagetool/languagetool-commandline.jar'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.

let test#strategy = "vimux"

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'



function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif



let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:tests'
    \ ]
    \ }

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'


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
let g:elite_mode=1
let python_highlight_all = 0
let g:C_UseTool_cmake = "yes"
let g:C_UseTool_doxygen = "yes"
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }


map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" Omnicomplete Better Nav
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Neocomplete Plugin mappins
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Mapping selecting Mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Shortcuts
nnoremap <Leader>o :Files<CR>
nnoremap <Leader>O :CtrlP<CR>
nnoremap <Leader>w :w<CR>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Vim-Test Mappings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Vim-PDV Mappings
autocmd FileType php inoremap <C-p> <ESC>:call pdv#DocumentWithSnip()<CR>i
autocmd FileType php nnoremap <C-p> :call pdv#DocumentWithSnip()<CR>
autocmd FileType php setlocal omnifunc=phpcd#CompletePHP

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
	nnoremap <Up>    :resize +2<CR>
	nnoremap <Down>  :resize -2<CR>
	nnoremap <Left>  :vertical resize +2<CR>
	nnoremap <Right> :vertical resize -2<CR>
endif

map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" Vim-Alchemist Mappings
autocmd FileType elixir nnoremap <buffer> <leader>h :call alchemist#exdoc()<CR>
autocmd FileType elixir nnoremap <buffer> <leader>d :call alchemist#exdef()<CR>

" Bloatundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'BufOnly.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'SirVer/ultisnips'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'benmills/vimux'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'c.vim'
Plugin 'othree/yajs.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'neomake/neomake'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'wavded/vim-stylus'
Plugin 'mattn/emmet-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-sensible'
Plugin 'airblade/vim-gitgutter'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'marijnh/tern_for_vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'ianks/vim-tsx'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-dispatch'
Plugin 'jakedouglas/exuberant-ctags'
Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'tobyS/vmustache'
Plugin 'janko-m/vim-test'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'phpvim/phpcd.vim'
Plugin 'tobyS/pdv'
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'elixir-lang/vim-elixir'
Plugin 'avdgaag/vim-phoenix'
Plugin 'mmorearty/elixir-ctags'
Plugin 'mattreduce/vim-mix'
Plugin 'BjRo/vim-extest'
Plugin 'frost/vim-eh-docs'
Plugin 'slashmili/alchemist.vim'
Plugin 'tpope/vim-endwise'
Plugin 'jadercorrea/elixir_generator.vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'AnsiEsc.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'junegunn/limelight.vim'
Plugin 'mkarmona/colorsbox'
Plugin 'romainl/Apprentice'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'chriskempson/base16-vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'AlessandroYorba/Sierra'
Plugin 'daylerees/colour-schemes'
Plugin 'effkay/argonaut.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'atelierbram/Base2Tone-vim'
Plugin 'colepeters/spacemacs-theme.vim'



"Plugin 'scrooloose/syntastic'
"Plugin 'OmniSharp/omnisharp-vim'
call vundle#end()
