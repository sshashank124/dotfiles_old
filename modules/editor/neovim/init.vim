" Load plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'bling/vim-airline'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'easymotion/vim-easymotion'
call plug#end()

" Enable filetype plugins
filetype plugin indent on

set splitbelow
set splitright

" Set 4 lines to the cursor - when moving vertically using j/k
set scrolloff=4

" Relative line numbers in margin
set number relativenumber

" Show current line
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=darkgray
augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=.git\*,.hg\*,.svn\*,*/target/*

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse') | set mouse=a | endif

" Use spaces instead of tabs
set expandtab

" 1 tab == 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set si "Smart indent
set wrap "Wrap lines

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Hide instead of closing buffers on navigating away
set hidden

" Show matching brackets when text indicator is over them
set showmatch

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off
set nobackup
set nowb
set noswapfile

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Don't change default cursor
set guicursor=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on
set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <space> as leader
let mapleader = " "

" Treat long lines as break lines (useful when moving around in them)
" map j gj
" map k gk

" Remap VIM 0 to first non-blank character
noremap 0 ^
noremap ^ 0

" Easier escape
inoremap jk <esc>
cnoremap jk <esc>

" make yank (Y) behavior similar to C and D
nnoremap Y y$

" Quick default macro
nnoremap Q @q
" Run macro on multiple selected lines
vnoremap Q :norm @q<cr>

" Save / quit
nnoremap <a-w> :update<cr>
nnoremap <a-q> :quit<cr>

" Tags
set tags=./tags;/

nnoremap gt g<c-]>
nnoremap gb <c-t>
nnoremap gn :tnext<cr>
nnoremap gp :tprev<cr>

" Window movement
"" Creation and Navigation
nnoremap <a-h> :call WinMove('h')<cr>
inoremap <a-h> <c-\><c-n>:call WinMove('h')<cr>
tnoremap <a-h> <c-\><c-n>:call WinMove('h')<cr>

nnoremap <a-j> :call WinMove('j')<cr>
inoremap <a-j> <c-\><c-n>:call WinMove('j')<cr>
tnoremap <a-j> <c-\><c-n>:call WinMove('j')<cr>

nnoremap <a-k> :call WinMove('k')<cr>
inoremap <a-k> <c-\><c-n>:call WinMove('k')<cr>
tnoremap <a-k> <c-\><c-n>:call WinMove('k')<cr>

nnoremap <a-l> :call WinMove('l')<cr>
inoremap <a-l> <c-\><c-n>:call WinMove('l')<cr>
tnoremap <a-l> <c-\><c-n>:call WinMove('l')<cr>

"" Resizing
nnoremap <a-s-h> <c-w><
inoremap <a-s-h> <c-\><c-n><c-w><i
tnoremap <a-s-h> <c-\><c-n><c-w><i

nnoremap <a-s-j> <c-w>+
inoremap <a-s-j> <c-\><c-n><c-w>+i
tnoremap <a-s-j> <c-\><c-n><c-w>+i

nnoremap <a-s-k> <c-w>-
inoremap <a-s-k> <c-\><c-n><c-w>-i
tnoremap <a-s-k> <c-\><c-n><c-w>-i

nnoremap <a-s-l> <c-w>>
inoremap <a-s-l> <c-\><c-n><c-w>>i
tnoremap <a-s-l> <c-\><c-n><c-w>>i

" Buffer shortcuts
nnoremap <a-a> :bp<cr>
inoremap <a-a> <c-\><c-n>:bp<cr>
tnoremap <a-a> <c-\><c-n>:bp<cr>

nnoremap <a-s> :bd<cr>
inoremap <a-s> <c-\><c-n>:bd<cr>
tnoremap <a-s> <c-\><c-n>:bd<cr>

nnoremap <a-d> :bn<cr>
inoremap <a-d> <c-\><c-n>:bn<cr>
tnoremap <a-d> <c-\><c-n>:bn<cr>

" Terminal
nnoremap <a-cr> :terminal<cr>i
"" Always enter terminal in insert mode
autocmd BufEnter term://* startinsert

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp.vim
let g:ctrlp_map = '<c-n>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" vim-easymotion
map f <Plug>(easymotion-sl)

" Disable neovim plugin providers
let g:loaded_python_provider = 1
let g:loaded_python3_provider = 1
let g:loaded_ruby_provider = 1
let g:loaded_node_provider = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]')) | wincmd v | else | wincmd s | endif
    exec "wincmd ".a:key
  endif
endfunction

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal! g'\"" | endif
" Remember info about open buffers on close
set viminfo^=%
