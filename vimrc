" see how to disable plugins here:
" http://stackoverflow.com/questions/4261785/temporarily-disable-some-plugins-using-pathogen-in-vim
" disable command-t, we use ctrlp now
let g:pathogen_disabled = ['command-t']

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

set autoindent                     " if want to paste something, set noautoindent within vim
set autoread                       " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                    " Fix broken backspace in some setups
set backupcopy=yes                 " see :help crontab
set clipboard=unnamed              " yank and paste with the system clipboard
set expandtab                      " expand tabs to spaces
set laststatus=2                   " always show statusline
set encoding=utf-8                 " encode for reading
set fileencoding=utf-8             " encode for writing
set nobomb 
" not use au to set encoding, it's a little annoying when start vim without
" specify a particular file TODO: it says that using "au ..." vim will convert
" the file which already has bomb or no-utf-8 encoding into utf-8 without
" bomb, and using "set ..." doesn't have this effect. And other people says
" that he has not see any annoying behavior of vim..
"au BufEnter * :set nobomb               " no bomb for the file
"au BufEnter * :set fileencoding=utf-8   " set file encoding to utf-8
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
set completeopt=menuone,menu        " don't show preview windows when do completion
                                     


" keyboard shortcuts
let mapleader = ','
" map <leader>l :Align
nmap <leader>a :Ack 
nmap <leader>d :NERDTreeToggle<CR>
" find current file in the tree
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
"nmap <leader>c <Plug>Kwbd
"map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>



" plugin settings
"let g:NERDSpaceDelims=1              " seems default value(0) is better
let g:gitgutter_enabled = 0
" ZOMG the_silver_searcher is so much faster than ack"
let g:ackprg = 'ag --nogroup --column'


" *** For ctrlp ***
let g:ctrlp_max_files = 0

" *** For CommandT ***
" to quick open buffer
"nmap <leader>b :CommandTBuffer<CR>
"nmap <leader>t :CommandT<CR>
" refresh first, then open CommandT window
"nmap <leader>T :CommandTFlush<CR>:CommandT<CR>

"let g:CommandTMaxHeight=20
"let g:CommandTMaxFiles=100000
"let g:CommandTMaxDepth=25

