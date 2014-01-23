set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set autowriteall
set fileformats=unix,dos,mac " 改行コードの自動認識
set scrolloff=5 " スクロール時の余白確保

syntax on
filetype on
filetype indent on
let g:netrw_liststyle = 3

"＃をなんとかする
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=ro
augroup END


" 全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

" -------------------
" 検索
" -------------------
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する(noignorecase)
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する(nosmartcase)
set smartcase
" インクリメンタルサーチ
set incsearch


imap <C-h> <ESC>:w<cr>:!time ruby %<CR>
nmap <C-h> :w<cr>:!time ruby %<CR>

imap <c-i> <esc>
" insertモードでhjkl移動を利用する
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>
