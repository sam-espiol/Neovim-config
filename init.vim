" ==============================================================================
" 1. CẤU HÌNH CÁ NHÂN CỦA BẠN
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
" 2. DUYỆT FILE BẰNG NETRW VÀ CHUYỂN ĐỔI CỬA SỔ
" ==============================================================================
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

" Phím tắt bật/tắt cây thư mục
nnoremap <C-n> :Lexplore<CR>

" --- PHÍM TẮT CHUYỂN ĐỔI GIỮA CÂY THƯ MỤC VÀ FILE ---
" Sử dụng tổ hợp Ctrl + các phím điều hướng H, J, K, L của Vim
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ==============================================================================
" 3. TERMINAL NỔI (NATIVE FLOATING TERMINAL - KHÔNG CẦN PLUGIN)
" ==============================================================================
let s:float_term_win = 0
let s:float_term_buf = 0

function! ToggleFloatTerm()
  " --- BẠN CÓ THỂ TÙY CHỈNH KÍCH THƯỚC VÀ VỊ TRÍ Ở ĐÂY ---
  " Đang thiết lập là 80% chiều rộng và chiều cao của màn hình
  let height = float2nr(&lines * 0.8)
  let width = float2nr(&columns * 0.8)
  
  " Công thức này căn giữa màn hình. Nếu muốn chỉnh vị trí khác, thay đổi row và col
  let row = float2nr((&lines - height) / 2)
  let col = float2nr((&columns - width) / 2)

  let opts = {
    \ 'relative': 'editor',
    \ 'row': row,
    \ 'col': col,
    \ 'width': width,
    \ 'height': height,
    \ 'style': 'minimal',
    \ 'border': 'single'
    \ }

  if win_gotoid(s:float_term_win)
    hide
  else
    if bufexists(s:float_term_buf)
      let s:float_term_win = nvim_open_win(s:float_term_buf, v:true, opts)
      startinsert
    else
      let s:float_term_buf = nvim_create_buf(v:false, v:true)
      let s:float_term_win = nvim_open_win(s:float_term_buf, v:true, opts)
      terminal
      startinsert
    endif
  endif
endfunction

" Phím F12 để bật/tắt Terminal nổi ở chế độ Normal
nnoremap <F12> :call ToggleFloatTerm()<CR>
" Phím F12 để bật/tắt Terminal nổi ngay cả khi đang gõ lệnh bên trong Terminal
tnoremap <F12> <C-\><C-n>:call ToggleFloatTerm()<CR>

" Bấm Esc 2 lần để thoát chế độ gõ lệnh của Terminal (chuyển về Normal Mode)
tnoremap <Esc><Esc> <C-\><C-n>
