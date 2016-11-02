" Enable color
syntax on
colorscheme peachpuff

" Disable mouse
set mouse=""

" Auto read when a file is changed from the outside
set autoread

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Enable ruler
set ruler

" Enable mouse
" set selectmode=mouse

" Wrapping characters
set showbreak=+
" Set tabs and shift properly
set expandtab
set tabstop=4
set shiftwidth=4
set list "show tab characters

" Arduino highlighting
au BufNewFile,BufRead *.ino set filetype=c

" Format the status line
