execute pathogen#infect()
call    pathogen#helptags()
syntax on
filetype plugin indent on

" omnicppcomplete asks for
set nocp
filetype plugin on


" TODO: test tab completion in multi tabs

set nocompatible                   " don't bother with vi compatibility

syntax enable                      " enable syntax highlighting

set autoindent
set autoread                       " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                    " Fix broken backspace in some setups
set backupcopy=yes                 " see :help crontab
set clipboard=unnamed              " yank and paste with the system clipboard
set expandtab                      " expand tabs to spaces
set laststatus=2                   " always show statusline
"set encoding=utf-8
"set list                           " show trailing whitespace
"set listchars=tab:▸\ ,trail:▫
"set number                         " show line numbers
set ruler                           " show where you are
set scrolloff=3                     " show context above/below cursorline
set shiftwidth=4                    " normal mode indentation commands use 4 spaces
"set showcmd
set ignorecase                      " this is needed to enable smartcase
set smartcase                       " case-sensitive search if any caps
set softtabstop=4                   " insert mode tab and backspace use 4 spaces
set tabstop=8                       " actual tabs occupy 8 characters. before change it, check help
set wildmenu                        " show a navigable menu for tab completion
set wildmode=longest,list,full      " TODO test
"set mouse=a                         " Enable basic mouse behavior such as resizing buffers.
                                     " disable it, so that double-clicking a word can copy it and paste it in terminal
set hlsearch                        " highlight searching word. you can remove the highlight by :noh, it will highlight again next search
                                     


" keyboard shortcuts
let mapleader = ','
" map <leader>l :Align
nmap <leader>a :Ack 
" to quick open buffer
nmap <leader>b :CommandTBuffer<CR>
nmap <leader>t :CommandT<CR>
" refresh first, then open CommandT window
nmap <leader>T :CommandTFlush<CR>:CommandT<CR>
nmap <leader>d :NERDTreeToggle<CR>
" find current file in the tree
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
"nmap <leader>c <Plug>Kwbd
"map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" plugin settings
let g:CommandTMaxHeight=20
"let g:NERDSpaceDelims=1              " seems default value(0) is better
let g:gitgutter_enabled = 0
" ZOMG the_silver_searcher is so much faster than ack"
let g:ackprg = 'ag --nogroup --column'



