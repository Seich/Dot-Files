colorscheme madeofcode
" Remove toolbars and other graphical things.
set guioptions-=T
set guioptions-=r
" Set gui size
set lines=30 columns=80

" Make copy paste and cut work as other gnome apps.
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" Set default options for html
autocmd FileType html setlocal shiftwidth=2 tabstop=2
