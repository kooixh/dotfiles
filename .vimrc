let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Basics: Syntax highlighting, line numbers, indent
set number 
set autoindent
syntax on

" Spaces over tabs
set tabstop=4
set softtabstop=4
set expandtab

" ctrl-c and yank system wide
set clipboard=unnamedplus

" Break bad habits - no arrow keys for cursor movement!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
