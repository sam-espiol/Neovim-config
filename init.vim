" ==============================================================================
" 1. TỰ ĐỘNG CÀI ĐẶT VIM-PLUG (Đảm bảo tính di động qua các máy khác nhau)
" ==============================================================================
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ==============================================================================
" 2. QUẢN LÝ PLUGIN
" ==============================================================================
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Duyệt file và thư mục
Plug 'preservim/nerdtree'

" Terminal dạng nổi (ổn định, không làm loạn layout code)
Plug 'voldikss/vim-floaterm'

call plug#end()

" ==============================================================================
" 3. CẤU HÌNH CÁ NHÂN CỦA BẠN
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

" ==============================================================================
" 4. CẤU HÌNH CÁC TÍNH NĂNG MỚI (NERDTree & Terminal)
" ==============================================================================

" --- Phím tắt cho NERDTree (Duyệt file) ---
" Bấm Ctrl + n để mở/đóng cây thư mục
nnoremap <C-n> :NERDTreeToggle<CR>
" Bấm Leader + f để tìm file hiện tại đang mở trong cây thư mục
nnoremap <leader>f :NERDTreeFind<CR>
" Tự động đóng Neovim nếu tab cuối cùng chỉ còn lại bảng NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" --- Phím tắt cho Floaterm (Terminal) ---
" Bấm F12 để bật/tắt terminal nổi (rất tiện để compile C/Java hoặc chạy lệnh bash nhanh)
let g:floaterm_keymap_toggle = '<F12>'
" Cài đặt kích thước Terminal
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
" Bấm Esc hai lần để thoát chế độ nhập liệu trong terminal quay về Normal mode
tnoremap <Esc><Esc> <C-\><C-n>
