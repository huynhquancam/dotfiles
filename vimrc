set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on

" For ruby block selecting
runtime macros/matchit.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kien/ctrlp.vim' "Ctrl + p to find your file
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-scripts/tComment'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mileszs/ack.vim'
Plugin 'ngmy/vim-rubocop'

" Auto-save
Plugin 'vim-scripts/vim-auto-save'
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
" Disable auto-save in Python
autocmd FileType python let g:auto_save=0

" Adding this line makes slim syntax highlighting work
autocmd BufNewFile,BufRead *.slim set ft=slim
autocmd BufNewFile,BufRead *.coffee set ft=coffee

" For polygloting programming
Plugin 'sheerun/vim-polyglot'

" Ruby Plugins
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'jgdavey/vim-blockle'
Bundle 'thoughtbot/vim-rspec'

" Multiple Cursors
Plugin 'terryma/vim-multiple-cursors'

" File Browser Plugin
Plugin 'scrooloose/nerdtree'
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1

call vundle#end()            " required

syntax enable

" Make VIM faster
set synmaxcol=150

" Never wrap the text
set nowrap
set hlsearch

" Make VIM not to stupidly smart
set formatoptions-=or

" Wild menu
set wildmenu
set wildmode=full

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Auto indentation
set autoindent

" Light Background
set bg=light
set number

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Get rid of 70's technologies
set nobackup
set noswapfile

" Make backspace works like normal
set backspace=indent,eol,start

set clipboard=unnamed

" Navigation around windows
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>

imap <C-L> <C-O>l
imap <C-J> <C-O>j
imap <C-K> <C-O>k
imap <C-h> <C-O>h
" *****************************************
" "     Leader Mappings
" " *****************************************
let mapleader = " "

" opens NerdTree
map <Leader>n :NERDTreeToggle<CR>

" *********************************
" RSPEC VIM MAPPING
" *********************************
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>r :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "Dispatch rspec {spec}"
" RSpec.vim mappings
autocmd FileType qf setlocal wrap linebreak

" convert ruby hash from :abc => '123' to abc: '123'
map <Leader>h :s/:\([^=,'"]*\) =>/\1:/g"']<CR>
map <Leader>H :%s/:\([^=,'"]*\) =>/\1:/g"']<CR>

" Quit all windows shortcut
map <Leader>x :qa<CR>
map <Leader>X :wqa<CR>
map <Leader>s :w<CR>
map <Leader>q :wq<CR>

map <Leader>d yyp
map <Leader><CR> cit<CR><esc>ko

" String double quote to single
map <Leader>' cs"'


