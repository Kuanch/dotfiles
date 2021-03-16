set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'lifepillar/vim-mucomplete'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tell-k/vim-autopep8'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Vim setting
set number

" syntastic
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E401'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enble_signs = 0

" for pep8
"au BufNewFile,BufRead *.py
set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set expandtab
"set autoindent
"set fileformat=unix

" airline
let g:airline_pwerline_fonts = 0
let g:airline_theme = 'luna'
let g:airline#extensions#whitespace#enabled = 0 

" jedi-vim
let g:jedi#popup_select_first = 1
let g:jedi#show_call_signatures = 1
let g:jedi#popup_on_dot = 1
let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 1

" mucomplete
set completeopt-=preview
set completeopt+=longest
set shortmess+=c
set belloff+=ctrlg
let g:jedi#popup_on_dot = 1
let g:mucomplete#enable_auto_at_startup = 0
let g:mucomplete#force_manual = 0
" Allow auto popup without tab key for member completion in cpp, also if
" manually invoked via tab key:
" let g:mucomplete#can_complete = { }
"let g:mucomplete#can_complete.default = { 'omni': { t -> t =~# '\m\k\%(\k\|\.\)$' } }
"
" autopep8
let g:autopep8_ignore="E501"
