" ==============================================================================
" PERSONAL CONFIGURATION
" ==============================================================================
set ai
set hlsearch
set ruler
highlight Comment ctermfg=green
syntax on
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
set smartindent

" Tự động đóng ngoặc/nháy
inoremap { {<CR>}<Esc>ko
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
inoremap [ []<Esc>ha
inoremap ( ()<Esc>ha
