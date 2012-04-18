" Preamble ------------------------------------------

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
set nocompatible
filetype plugin on
set modelines=0

"set map leader (free key to use with custom binds)"
let mapleader=","

"Quickly edit and reload vimrc configuration"
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"------------------------------------------------------

"Key mappings-----------------------------------------
nmap <silent> <c-s-d> Yp " Duplicate current line
nmap <silent> <c-s-k> dd "Delete current line

"F1 does the same as esc
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

inoremap jj <ESC>
"-----------------------------------------------------

" Color Scheme -------------------------------------- 

set t_Co=256
set ofu=syntaxcomplete#Complete
syntax on
"set background=dark
"colorscheme solarized
colorscheme badwolf
" Clear find highlights when enter is pressed.
nnoremap <CR> :noh<CR><CR>

"------------------------------------------------


"Plugin configuration ---------------------------------------

" Open nerd tree.
nmap <silent> <leader>n :NERDTreeToggle<CR>
set autochdir
let NERDTreeChDirMode=2
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Gundo
nnoremap <F5> :GundoToggle<CR>

"Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Vim powerline
let g:Powerline_symbols = 'fancy'

"Less syntax support
au BufNewFile,BufRead *.less set filetype=less
"------------------------------------------------------------


" General Settings ---------------------------------------------

"Use normal regexes
nnoremap / /\v
vnoremap / /\v

"store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undodir=~/.vim/tmp/undo//     " undo files

set encoding=utf-8
set wildmenu
set wildmode=list:longest

set hidden

set undofile
set backup
set noswapfile

set nowrap
set tabstop=4
set ruler

set backspace=indent,eol,start "allows backspacing over everything in insert mode.

set autoindent
set copyindent
set number
set shiftwidth=4
set softtabstop=4
set expandtab

set laststatus=2
set showmatch
set incsearch

set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab

set hlsearch
set incsearch

set history=1000
set undolevels=1000

" Save when losing focus
au FocusLost * :silent! wall

set pastetoggle=<F2>

"-------------------------------------------------------------------

" Vim buffer and windows Navigation ---------------------------------
" context (from http://www.vim.org/tips/tip.php?tip_id=102)
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
    	return "\<tab>"
    else
    	return "\<c-p>"
	endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" Allows you to use windows commands in insert mode
imap <C-w> <C-o><C-w>

"Allows using alt+arrows to navigate splits
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"Allows using ctrl+arrows to navigate buffers
nmap <silent> <C-Left> :bn<CR>
nmap <silent> <C-Right> :bp<CR>

"Allows you to use sudo after you open a read-only file.
cmap w!! w !sudo tee % >/dev/null
" -----------------------------------------------------------------

" General File Settings--------------------------------------------------

"set list
"set listchars=tab:▸\ ,eol:¬
"------------------------------------------------------------------------

" Specific File syntax Settings -----------------------------------------
if has('autocmd')
	autocmd filetype html,xml set listchars-=tab:>
endif

"------------------------------------------------------------------------

" Line swapping ---------------------------------------------------------- 

function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

noremap <silent> <c-s-up> :call <SID>swap_up()<CR>
noremap <silent> <c-s-down> :call <SID>swap_down()<CR>

" --------------------------------------------------------------------------
" Specific file settings.

