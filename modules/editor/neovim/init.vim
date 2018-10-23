" PLUGINS
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

" CORE
filetype plugin indent on   " enable filetype plugins
syntax on   " enable syntax highlighting
if has('mouse') | set mouse=a | endif   " enable mouse support
set encoding=utf8
set ffs=unix,dos,mac   " use Unix as the standard file type
set nobackup nowb noswapfile   " no backups
set guicursor=   " don't change default cursor
set wildignore=*.o,*~,*.pyc   " ignore compiled files
set wildignore+=.git\*,.hg\*,.svn\*,*/target/*   " ignore vcs files
set tm=500   " timeout length for mapped sequences
let mapleader = " "   " <space> as leader
"" neovim
let g:loaded_python_provider = 1   " disable plugin providers
let g:loaded_python3_provider = 1
let g:loaded_ruby_provider = 1
let g:loaded_node_provider = 1

" UTILITY FUNCTIONS
function! Map3(modes, keys, rhs)
  " uppercase mode: permanent mode change to run command
  " lowercase mode: temporary (return to mode after command)
  if a:modes =~ 'N'
    execute 'nnoremap' a:keys a:rhs
  endif
  if a:modes =~ 'I'
    execute 'inoremap' a:keys '<esc>' . a:rhs
  elseif a:modes =~ 'i'
    execute 'inoremap' a:keys '<esc>' . a:rhs . 'i'
  endif
  if a:modes =~ 'T'
    execute 'tnoremap' a:keys '<c-\><c-n>' . a:rhs
  elseif a:modes =~ 't'
    execute 'tnoremap' a:keys '<c-\><c-n>' . a:rhs . 'i'
  endif
endfunction

" UI
set background=dark
set cursorline   " highlight current line
hi CursorLineNr cterm=bold ctermfg=1|   " red current line number color
hi CursorLine cterm=bold ctermbg=8|   " dark gray bg color
augroup CursorLine   " only highlight current line in active buffer/window
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END
set number relativenumber   " relative line numbers except current line
set cmdheight=1   " command bar height
"" airline
let g:airline_powerline_fonts = 1   " enable custom decoration glyphs
let g:airline#extensions#tabline#enabled = 1   " enable topbar
let g:airline#extensions#tabline#buffer_nr_show = 1   " show buffer number

" MOVEMENT
set whichwrap+=<,>,h,l   " wrap movement on lines
noremap 0 ^|   " 0 jumps to first non-whitespace char
noremap ^ 0|   " ^ jumps for column 0
map f <Plug>(easymotion-sl)|   " bi-dir char seek on current line

" VIEWING
set scrolloff=4   " line padding when scrolling
set lbr tw=500   " linebreak on 500 characters
set wrap   " wrap off-screen lines
set lazyredraw   " no redraw on macros
set showmatch   " show bracket pair for bracket under cursor
"" ctrlp
let g:ctrlp_map = '<c-n>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1   " show hidden files

" EDITING
set expandtab ts=2 sw=2 sts=2 smarttab   " tab = 2 spaces
call Map3('Ni ', '<a-w>', ':update<cr>')  " save changes
call Map3('NIT', '<a-q>', ':quit<cr>')  " quit
inoremap jk <esc>|   " easier escape
cnoremap jk <esc>|   " easier escape
nnoremap Q @q|   " quick default macro
vnoremap Q :norm @q<cr>|   " run macro on selected lines
nnoremap Y y$|   " make Y behave similarly to C and D

" SEARCHING
set ignorecase smartcase   " a matches (a or A) but A only matches A
set magic   " regex magic

" TAGS
set tags=./tags;/   " search for tags from current dir up to root
nnoremap gt g<c-]>|   " go to tag or list tags if multiple options
nnoremap gb <c-t>|    " go back on tag stack
nnoremap gn :tnext<cr>|   " go to next tag match
nnoremap gp :tprev<cr>|   " go to previous tag match

" WINDOWS
set splitbelow splitright   " new windows below and to the right
function! WinMove(key)   " smart way to move between windows
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]')) | wincmd v | else | wincmd s | endif
    exec "wincmd ".a:key
  endif
endfunction
call Map3('NIT', '<a-h>', ':call WinMove(''h'')<cr>') " window to left or new
call Map3('NIT', '<a-j>', ':call WinMove(''j'')<cr>') " window below or new
call Map3('NIT', '<a-k>', ':call WinMove(''k'')<cr>') " window above or new
call Map3('NIT', '<a-l>', ':call WinMove(''l'')<cr>') " window to right or new
call Map3('Nit', '<a-s-h>', '<c-w><') " shrink window horizontally
call Map3('Nit', '<a-s-j>', '<c-w>+') " grow window vertically
call Map3('Nit', '<a-s-k>', '<c-w>-') " shrink window vertically
call Map3('Nit', '<a-s-l>', '<c-w>>') " grow window horizontally

" BUFFERS
set hidden   " hide buffers instead of closing on navigating away
call Map3('NIT', '<a-a>', ':bp<cr>')  " prev buffer
call Map3('NIT', '<a-s>', ':bd<cr>')  " delete buffer
call Map3('NIT', '<a-d>', ':bn<cr>')  " next buffer

" TERMINAL
call Map3('NI ', '<a-cr>', ':terminal<cr>')
autocmd BufEnter,TermOpen term://* startinsert   " enter term in insert mode
