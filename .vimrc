set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set autowriteall
syntax on
let g:netrw_liststyle = 3

imap <C-j> <ESC>:w<cr>:!time ruby %<CR>
nmap <C-j> :w<cr>:!time ruby %<CR>

augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=ro
augroup END

filetype on
filetype indent on
