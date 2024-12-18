set number
set mouse=a
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set encoding=UTF-8
set visualbell
set scrolloff=5
set autoindent
set smartindent
call plug#begin()
Plug 'https://github.com/navarasu/onedark.nvim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline-themes'
call plug#end()
:colorscheme onedark
let g:airline_theme='onedark'
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :UndotreeToggle<CR>
inoremap { {<CR>}<Esc>ko
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
