""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable vi compatibility
set nocompatible

" Set default encoding to UTF-8
set encoding=utf-8

" Set how many lines of history VIM remmembers
set history=50

" Do not create the ~/.viminfo file
set viminfofile=NONE

" Enable type file detection
filetype on
" Enable plugins and load plugin for the detected file type
filetype plugin on
" Load an indent file for the detected file type
filetype indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface behavior
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't redraw the screen while executing macros
set lazyredraw
" Indicate a fast terminal connection
set ttyfast

" Turn on the wild menu for command line completion
set wildmenu

" Turn magic on for regular expressions
set magic

" Wrap lines
set wrap
" Continue wrapped lines visually indented
set breakindent

" Disable sound on errors
set belloff=all
set noerrorbells
set novisualbell
set t_vb=
set timeoutlen=500

" Disable shortening of file messages
set shortmess-=f
set shortmess-=i
set shortmess-=l
set shortmess-=n
set shortmess-=x

" Disable the Vim intro message
set shortmess+=I


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show the command bar
set showcmd
" Set the height of the command bar
set cmdheight=1

" Show current mode
set showmode

" TODO: Set the cursor appearance
"set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block

" Display relative line numbers
set number relativenumber


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hide the status line
set laststatus=0

" Show the cursor position (ruler) at all times
set ruler
" TODO: Format the ruler string content
"set rulerformat=


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

" Set the colorscheme
colorscheme default
" Set the background color
set background=dark


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off
set nobackup
set nowritebackup
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets the text formatting options as 'formatoptions=cql'
" Disables automatic commenting on newline
autocmd FileType *
	\ set formatoptions-=r |
	\ set formatoptions-=o

" Insert one space after . ? and ! with a join command
set nojoinspaces


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case when searching
set ignorecase
" Override ignorecase if the search pattern contains uppercase characters
set smartcase

" Search the string while it is being typed
set incsearch
" When search reaches end of file, wrap around to the beginning
set wrapscan

" Highlight search results
set hlsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show at least 1 line arround the current cursor position
set scrolloff=1

" Let backspace delete EoL, automatic indentation and past start of insert
set backspace=eol,start,indent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * :%s/\s\+$//e

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype specific options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" textwidth	sets the maximum allowed characters per line
" expandtab	inserts spaces when the Tab key is pressed
" tabstop	sets the size of the Tab character (in columns)
" shiftwidth	controls how many columns text is indented with the reindent
"		operation (<< and >>)
" softtabstop	sets how many columns hitting the Tab key indents,
"		- if softtabstop is less then tabsop and expandtab is not set
"		  vim will use a combination of tabs and spaces
"		- if sotfttab equals tabstop end expandtab is not set vim will
"		  always use tabs
"		- if expandtab is set, vim will always use spaces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" assembly
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For assembly files use tabs for indentation, use max 80 characters per line
autocmd FileType asm
	\ setlocal textwidth=80


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For C files use tabs for indentation, and use max 80 characters per line
autocmd FileType c
	\ setlocal textwidth=80


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Java
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For Java files use 4 spaces as tabs, and use max 80 characters per line
" https://www.oracle.com/technetwork/java/codeconventions-150003.pdf
autocmd FileType java
	\ setlocal expandtab |
	\ setlocal tabstop=4 |
	\ setlocal shiftwidth=4 |
	\ setlocal softtabstop=4 |
	\ setlocal smarttab |
	\ setlocal textwidth=80


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tex
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For Tex files use 2 spaces as tabs, and use max 120 characters per line
autocmd FileType tex
	\ setlocal expandtab |
	\ setlocal tabstop=2 |
	\ setlocal shiftwidth=2 |
	\ setlocal softtabstop=2 |
	\ setlocal smarttab |
	\ setlocal textwidth=120


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For Python files use 4 spaces as tabs, and use max 79 characters per line
" https://peps.python.org/pep-0008/
autocmd FileType python
	\ setlocal expandtab |
	\ setlocal tabstop=4 |
	\ setlocal shiftwidth=4 |
	\ setlocal softtabstop=4 |
	\ setlocal smarttab |
	\ setlocal textwidth=79


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SystemVerilog
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For SystemVerilog use 2 spaces as tabs, and use max 100 characters per line
" https://www.systemverilog.io/styleguide
" https://github.com/lowRISC/style-guides/blob/master/VerilogCodingStyle.md
autocmd FileType systemverilog
	\ setlocal expandtab |
	\ setlocal tabstop=2 |
	\ setlocal shiftwidth=2 |
	\ setlocal softtabstop=2 |
	\ setlocal smarttab |
	\ setlocal textwidth=100


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VHDL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For VHDL use 2 spaces as tabs, and use man 100 characters per line
autocmd FileType vhdl
	\ setlocal expandtab |
	\ setlocal tabstop=2 |
	\ setlocal shiftwidth=2 |
	\ setlocal softtabstop=2 |
	\ setlocal smarttab |
	\ setlocal textwidth=100
