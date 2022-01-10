" curl -fLO $HOME/.config/nvim/autoload/plug.vim \     
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


source $HOME/.config/nvim/plug-config/coc.vim  

set nocompatible " iMproved, required
filetype off     " required
set termguicolors

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme gruvbox

let g:airline_theme='gruvbox'

lua require 'colorizer'.setup()


map <silent> <C-n> :NERDTreeFocus<CR>
filetype plugin indent on " required
syntax on
set colorcolumn=80
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
set number
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

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
