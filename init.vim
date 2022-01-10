n"c curl -fLO $HOME/.config/nvim/autoload/plug.vim \     
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

set nocompatible " be iMproved, required
filetype off     " required

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
call plug#end()

colorscheme gruvbox
map <silent> <C-n> :NERDTreeFocus<CR>
