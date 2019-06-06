
" force home row usage
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" escape from insert mode
inoremap jk <ESC>

" spare extra modifier key for commands
" nnoremap ; :

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" remove octals as number format
set nrformats -=octal

" active vim standard plugins 
set nocompatible
filetype plugin on
