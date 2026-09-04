" ==============================================================================
" 1. CẤU HÌNH CÁ NHÂN CỦA BẠN (Đã làm gọn và tối ưu)
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
" 2. DUYỆT FILE BẰNG NETRW (Không cần NERDTree)
" ==============================================================================
" Cấu hình Netrw để hiển thị dạng cây (Tree) giống hệt NERDTree
let g:netrw_banner = 0         " Ẩn các dòng text hướng dẫn dư thừa ở trên cùng
let g:netrw_liststyle = 3      " Hiển thị thư mục theo dạng cây có thể đóng/mở
let g:netrw_browse_split = 4   " Mở file ở cửa sổ kế bên (không đè lên cây thư mục)
let g:netrw_altv = 1           " Quy định hướng chia cửa sổ
let g:netrw_winsize = 20       " Chiều rộng thanh thư mục chiếm 20% màn hình

" Bấm Ctrl + n để bật/tắt cây thư mục bên trái (Lexplore: Left Explore)
nnoremap <C-n> :Lexplore<CR>

" ==============================================================================
" 3. TERMINAL TÍCH HỢP (Không cần Floaterm)
" ==============================================================================
" Bấm F12 để mở Terminal ở cạnh dưới màn hình (cao 12 dòng) và tự động sẵn sàng gõ lệnh
nnoremap <F12> :botright split <Bar> resize 12 <Bar> terminal<CR>i

" Bấm F12 trong chế độ Terminal để đóng nó đi nhanh chóng
tnoremap <F12> <C-\><C-n>:q!<CR>

" Bấm Esc 2 lần để thoát chế độ nhập lệnh của Terminal (về Normal mode) để copy/paste
tnoremap <Esc><Esc> <C-\><C-n>
