" THE NEXT 3 LINES MUST BE FIRST
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
" ADD YOUR LINES BELOW HERE

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set list
" trail here seems to interfere with it having red bg, which i perfer
" set listchars=tab:▸-,trail:-,eol:¬
" these interfere with copy and paste from vim to other apps, yuk!
" set listchars=tab:▸-,eol:¬
set listchars=
let mapleader = ","
set mouse-=a

set nocompatible               " use vim defaults
set scrolloff=3                " keep 3 lines when scrolling
set ai                         " set auto-indenting on for programming

set showcmd                    " display incomplete commands
set nobackup                   " do not keep a backup file
set number                     " show line numbers
set ruler                      " show the current row and column

set hlsearch                   " highlight searches
set incsearch                  " do incremental searching
set showmatch                  " jump to matches when entering regexp
set ignorecase                 " ignore case when searching
set smartcase                  " no ignorecase if Uppercase char present
set spell                      " checkz my spellz

set visualbell t_vb=           " turn off error beep/flash
set novisualbell               " turn off visual bell

set backspace=indent,eol,start " make that backspace key work the way it should

syntax on                      " turn syntax highlighting on by default
filetype on                    " detect type of file

set background=dark

"set t_Co=256                   " set colors to 256
"colorscheme vividchalk
colorscheme vibrantink
"colorscheme fruity
"colorscheme solarized

" Set the font and size for gvim
set guifont=Monaco\ 11

" Show trailing whitepace and spaces before a tab:
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
" Autoremove trailing whitespace on write (kinda dangerous)
autocmd BufWritePre * :%s/\s\+$//e

"keybindings
map <C-o> :tabnew<space>
map <C-h> :tabprev<CR>
map <C-l> :tabnext<CR>
map <C-n> :NERDTree<CR>
map _ :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>:nohlsearch<CR>
map - :s/^/#/<CR>:nohlsearch<CR>

" CtrlP Settings
set wildignore+=*/.git/*,*/vendor/bundle/*,*/\.bundle/*
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multi = '1t'

" Filetypes
au BufNewFile,BufRead Vagrantfile,Vagrantfile.* setf ruby
au BufNewFile,BufRead Guardfile setf ruby
autocmd BufNewFile,BufReadPost *.slim set filetype=jade
autocmd BufNewFile,BufReadPost *.jade set filetype=jade
autocmd FileType jade set tabstop=2|set shiftwidth=2|set expandtab

