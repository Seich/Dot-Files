set t_Co=256

set nocompatible

filetype plugin on
set ofu=syntaxcomplete#Complete

syntax on
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarizedi
colorscheme molokai


"pathogen plugin loader thingy
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"set map leader (free key to use with custom binds)
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Open nerd tree.
nmap <silent> <leader>n :NERDTreeToggle<CR>

" Clear find highlights when enter is pressed.
nnoremap <CR> :noh<CR><CR>

"store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"more stuff from nvie.
set hidden

set nobackup
set noswapfile

set nowrap
set tabstop=4
set backspace=indent,eol,start "allows backspacing over everything in insert mode.

set autoindent
set copyindent
set number
set shiftwidth=4
set softtabstop=4

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

"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.

if has('autocmd')
	autocmd filetype html,xml set listchars-=tab:>
endif

set pastetoggle=<F2>

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

"Use the same symbols as textmate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,trail:-
