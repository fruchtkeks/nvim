" Allgemein

:set list listchars=space:.,tab:⟶\ ,trail:·,extends:>,precedes:<,nbsp:%
:set list

" Format

:set autoindent
:set smarttab
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4

" Navigation

:set number
:set showmatch
:set mouse=a

:set whichwrap+=<,>,h,l,[,]

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

" Layout
Plug 'https://github.com/kyazdani42/nvim-web-devicons'
Plug 'https://github.com/kyazdani42/nvim-tree.lua'

" Color Scheme
Plug 'https://github.com/Mofiqul/vscode.nvim'

call plug#end()

" ------------------ Colors ------------------

:colorscheme vscode
