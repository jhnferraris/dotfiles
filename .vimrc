set shell=/bin/bash
if $TERM == "xterm"
  set t_Co=256               " 256 colors
endif
set nocompatible               " be iMproved
let mapleader=","              " change the leader to be a comma vs slash
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Raimondi/delimitMate'
Bundle 'tomasr/molokai.git'
Bundle 'elzr/vim-json'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/ZoomWin'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" =================================================================================================
" Basic Settings
" =================================================================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
" Bash-style tab completion
set wildmode=longest,list
set wildmenu

set nobackup
set noswapfile " No swap files, use version control instead
set clipboard=unnamed " Use OS clipboard for copypasta
set paste " Fix bad autoindent of pasted text
 
" Enable auto-indentation
set autoindent
filetype plugin indent on

set tabstop=2     " a tab is 2 spaces
set expandtab
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" Enable OS mouse clicking and scrolling
"
" Note for Mac OS X: Requires SIMBL and MouseTerm
"
" http://www.culater.net/software/SIMBL/SIMBL.php
" https://bitheap.org/mouseterm/
if has("mouse")
  set mouse=a
endif

" don't bell or blink
set noerrorbells
set vb t_vb=
 
" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc,*.swp,*.bak,*.class
set wildignore+=eggs/**
set wildignore+=*.egg-info/**
 
set grepprg=ack         " replace the default grep program with ack

" Monokai theme
colorscheme molokai

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12.00

" Margin
set colorcolumn=100

" Make + and - add a blank line below or above respectively
nmap + :put =''<CR>
nmap - :put! =''<CR>

" Hide toolbar in MacVim http://jonatkinson.co.uk/removing-toolbar-macvim/
if has("gui_running")
  set guioptions=egmrt
endif

" =================================================================================================
" Plugins configs
" =================================================================================================

" NERD Tree
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>
" http://stackoverflow.com/a/10417725/246142
silent! map <F3> :NERDTreeFind<CR>
" NERD window size
let NERDTreeWinSize=50
:command! NT NERDTree

" Powerline
set laststatus=2 "Enable powerline for single buffers (no splits)
let g:Powerline_symbols='fancy'

" Molokai
" Lighten the comment color a little bit
:hi Comment         guifg=#75715E


