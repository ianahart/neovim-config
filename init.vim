" curl -fLO $HOME/.config/nvim/autoload/plug.vim \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


source $HOME/.config/nvim/plug-config/coc.vim
let g:python3_host_prog=expand('~/virtualenvs/neovim/venv/bin/python3.10')

set nocompatible " iMproved, required
filetype off     " required
set termguicolors

call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'tjdevries/colorbuddy.vim'
Plug 'Yazeed1s/oh-lucy.nvim'
Plug 'tjdevries/gruvbuddy.nvim'
call plug#end()

" let g:tokyonight_transparent = 1
" let g:tokyonight_italic_keywords = 0
" let g:airline_theme='supernova'


colorscheme catppuccin




let g:airline_theme='supernova'

let g:java_highlight_all = 1

let g:oh_lucy_transparent_background = 1

let g:transparent_background = 1

lua require('config')


filetype plugin indent on " required
syntax on
set colorcolumn=80
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
set number                     " Show current line number
set relativenumber" Show relative line numbers
set nowrap
set list
set listchars=trail:*
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
set guifont=3270-Medium\ Nerd\ Font\ Complete\ 22


highlight LineNr term=bold cterm=NONE guifg=#059e97  guibg=NONE " Change gutter line number color

" Transparent background
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
" Telescope
nnoremap <silent> ;f <cmd>Telescope find_files<cr>
nnoremap <silent> ;r <^cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

" do not close the preview tab when switching to other buffers
let g:mkdp_auto_close = 0




  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
    inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
    " remap for complete to use tab and <cr>
    inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
    inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
    inoremap <silent><expr> <c-space> coc#refresh()

    hi CocSearch ctermfg=12 guifg=#18A3FF
    hi CocMenuSel ctermbg=109 guibg=#13354A


" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>


" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

map <silent> <C-n> :NERDTreeFocus<CR>
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue
let NERDTreeShowHidden=1
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
