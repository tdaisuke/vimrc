set number
set ruler
set cursorline
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set autowriteall
set fileformats=unix,dos,mac " 改行コードの自動認識
set scrolloff=5 " スクロール時の余白確保


"filetype on
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

imap <C-t> <ESC>:QuickRun<CR>
nmap <C-t> :QuickRun<CR>

"rで保存してruby
imap <C-r> <ESC>:w<cr>:!time ruby %<CR>
nmap <C-r> :w<cr>:!time ruby %<CR>
"wで保存
imap <C-w> <ESC>:w<CR>
nmap <C-w> :w<CR>
"qで終了
imap <C-q> <ESC>:w<CR>:q<CR>
nmap <C-q> :w<CR>:q<CR>

"iでesc
imap <c-i> <esc>
" insertモードでhjkl移動を利用する
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>

"git関連
imap <C-a> <ESC>:w<CR>:Gwrite<CR>
nmap <C-a> :w<CR>:Gwrite<CR>
imap <C-c> <ESC>:w<CR>:Gcommit -am "
nmap <C-c> :w<CR>:Gcommit -am "
imap <C-p> <ESC>:Git push origin master<CR>
nmap <C-p> :Git push origin master<CR>
imap <C-s> <ESC>:Gstatus<CR>
nmap <C-s> :Gstatus<CR>

"vundle
set nocompatible               " be iMproved
filetype off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle "tpope/vim-fugitive"
NeoBundle "thinca/vim-quickrun"
"mkdir -p ~/.vim/bundle
"git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc
":NeoBundleInstall
":NeoBundleClean

"set nocompatible
"filetype off
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

"Bundle "tpope/vim-fugitive"
"Bundle "thinca/vim-quickrun"
":BundleInstall

"filetype plugin indent on
filetype plugin indent on     " required!
"filetype indent on
syntax on
