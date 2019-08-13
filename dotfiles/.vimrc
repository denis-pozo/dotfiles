" This option makes Vim behave in a more useful way.
set nocompatible

" There are potential security implications to having modelines on (though
" they are cool). If you don't know what they are, it's better not to mess
" with it.
set nomodeline

" This is turning on three related options for filetypes; detection, plugins,
" and identation. Vim will autodetect a lot of filetypes and turn on custom
" options / indentation rules per filetype.
filetype plugin indent on

" Turns on syntax highlighting. 
syntax on

" Enables the wildmenu. When on, command-line mode (the mode when you start
" with a ':' ) completion operates in an "enhanced" mode. 
set wildmode=longest:full,full
set wildmenu

" Sets the maximum width of text that is being inserted.
set textwidth=80
" The sequence of letters describes how automatic formatting is to be done.
" c - Auto-wrap comments using textwidth, inserting the current comment leader
" automatically
" q - Allow formatting of comments with "gq".
set formatoptions=cq

" Enables line numbers.
set number

" Sets the minimum number of screen lines to keep above and below the cursor.
set scrolloff=5

" Copy indent from current line when starting a new line.
set autoindent

" Turns on incremental search
set incsearch

" Show the line and column number of the cursor position in the lower right.
set ruler

" Show partial commands in the last line of the screen.
set showcmd

" Force home row usage, instead of arrows.
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Escape from insert mode with 'jk' key strokes. <ESC> still works.
inoremap jk <ESC>

" Spare extra modifier key for commands (disabled)
" nnoremap ; :

" ??????
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Remove octals as number format
set nrformats -=octal

" Sets backspace to work the way you'd expect it to. (disabled)
" set backspace=indent,eol,start

