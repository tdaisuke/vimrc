set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set autowriteall
syntax on
let g:netrw_liststyle = 3
 
 
 
imap <F10> <ESC>:w<cr>:!ruby %<CR>
nmap <F10> :w<cr>:!ruby %<CR>
 
imap <C-j> <ESC>:tabn<CR>
nmap <C-j> :tabn<CR>
 
imap <C-k> <ESC>:tabp<CR>
nmap <C-k> :tabp<CR>
 
imap <C-h> <ESC>:tabf .<CR>
nmap <C-h> :tabf .<CR>
 
imap <C-l> <ESC>:tabc<CR>
nmap <C-l> :tabc<CR>
 
 
filetype on
filetype indent on
