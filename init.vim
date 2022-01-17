" curl -fLO $HOME/.config/nvim/autoload/plug.vim \     
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


source $HOME/.config/nvim/plug-config/coc.vim 
let g:python3_host_prog=expand('~/virtualenvs/neovim/venv/bin/python3.9')
let g:ctrlp_max_files=0

set nocompatible " iMproved, required
filetype off     " required
set termguicolors

call plug#begin('~/.config/nvim/plugged')
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
call plug#end()

let g:gruvbox_baby_function_style = "NONE"
let g:gruvbox_baby_keyword_style = "italic"

colorscheme gruvbox-baby

lua require 'colorizer'.setup()


map <silent> <C-n> :NERDTreeFocus<CR>
filetype plugin indent on " required
syntax on
set colorcolumn=80
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
set number                     " Show current line number
set relativenumber             " Show relative line numbers
set nowrap
set smartcase
set hlsearch
set noerrorbells
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noswapfile
set backspace=indent,eol,start
set autoindent
set guifont=Hack\ Nerd\ Font\ Mono\ 12
hi Normal guibg=NONE ctermbg=NONE
" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
