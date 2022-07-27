" General

set list listchars=space:.,tab:⟶\ ,trail:·,extends:>,precedes:<,nbsp:%
set list

" Format

set expandtab
set autoindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Navigation

set number
set showmatch
set mouse=a

set whichwrap+=<,>,h,l,[,]

" Keymap

inoremap <S-Tab> <C-d>

" File Browser

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25

" ------------------ Plugins ------------------

call plug#begin()

" General

Plug 'https://github.com/ryanoasis/vim-devicons'

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'

Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }

" Code
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'dense-analysis/ale'

" Color Scheme
Plug 'https://github.com/fruchtkeks/vscode.nvim'

call plug#end()

" ------------------ Colors ------------------

colorscheme vscode

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='light'
