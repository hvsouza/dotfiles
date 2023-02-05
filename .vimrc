" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

set cursorline

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
" Show line numbers
set number

" Set status line display
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Highlight matching search patterns
" set hlsearch

" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

" General settings from DT
set wildmenu                    " Display all matches when tab complete.
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.



" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100


" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

" Remap for NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38



" The lightline.vim theme
let g:lightline = {
            \ 'colorscheme': 'darcula',
            \ }

let g:dracula_italic = 0
let g:dracula_colorterm = 1
colors dracula

 " provide path directly to the library file
 let g:clang_library_path='/usr/lib/llvm-14/lib/libclang-14.so.1'


" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Using iTerm2? Go-to preferences / profile / colors and disable the smart bar
" cursor color. Then pick a cursor and highlight color that matches your theme.
" That will ensure your cursor is always visible within insert mode.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[0 q"

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-G>', 'n') ==# ''
  nnoremap <silent> <C-G> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif


let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf='$HOME/.vim/plugged/youcompleteme/.ycm_extra_conf.py '
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Theming
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight LineNr           ctermfg=7    ctermbg=none    cterm=none
" highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
" highlight VertSplit        ctermfg=0    ctermbg=8       cterm=none
" highlight Statement        ctermfg=2    ctermbg=none    cterm=none
" highlight Directory        ctermfg=4    ctermbg=none    cterm=none
" highlight StatusLine       ctermfg=7    ctermbg=8       cterm=none
" highlight StatusLineNC     ctermfg=7    ctermbg=8       cterm=none
" highlight NERDTreeClosable ctermfg=2
" highlight NERDTreeOpenable ctermfg=8
" highlight Comment          ctermfg=4    ctermbg=none    cterm=italic
" highlight Constant         ctermfg=12   ctermbg=none    cterm=none
" highlight Special          ctermfg=4    ctermbg=none    cterm=none
" highlight Identifier       ctermfg=6    ctermbg=none    cterm=none
" highlight PreProc          ctermfg=5    ctermbg=none    cterm=none
" highlight String           ctermfg=12   ctermbg=none    cterm=none
" highlight Number           ctermfg=1    ctermbg=none    cterm=none
" highlight Function         ctermfg=1    ctermbg=none    cterm=none
" " highlight WildMenu         ctermfg=0       ctermbg=80      cterm=none
" " highlight Folded           ctermfg=103     ctermbg=234     cterm=none
" " highlight FoldColumn       ctermfg=103     ctermbg=234     cterm=none
" " highlight DiffAdd          ctermfg=none    ctermbg=23      cterm=none
" " highlight DiffChange       ctermfg=none    ctermbg=56      cterm=none
" " highlight DiffDelete       ctermfg=168     ctermbg=96      cterm=none
" " highlight DiffText         ctermfg=0       ctermbg=80      cterm=none
" " highlight SignColumn       ctermfg=244     ctermbg=235     cterm=none
" " highlight Conceal          ctermfg=251     ctermbg=none    cterm=none
" " highlight SpellBad         ctermfg=168     ctermbg=none    cterm=underline
" " highlight SpellCap         ctermfg=80      ctermbg=none    cterm=underline
" " highlight SpellRare        ctermfg=121     ctermbg=none    cterm=underline
" " highlight SpellLocal       ctermfg=186     ctermbg=none    cterm=underline
" " highlight Pmenu            ctermfg=251     ctermbg=234     cterm=none
" " highlight PmenuSel         ctermfg=0       ctermbg=111     cterm=none
" " highlight PmenuSbar        ctermfg=206     ctermbg=235     cterm=none
" " highlight PmenuThumb       ctermfg=235     ctermbg=206     cterm=none
" " highlight TabLine          ctermfg=244     ctermbg=234     cterm=none
" " highlight TablineSel       ctermfg=0       ctermbg=247     cterm=none
" " highlight TablineFill      ctermfg=244     ctermbg=234     cterm=none
" " highlight CursorColumn     ctermfg=none    ctermbg=236     cterm=none
" " highlight CursorLine       ctermfg=none    ctermbg=236     cterm=none
" " highlight ColorColumn      ctermfg=none    ctermbg=236     cterm=none
" highlight Cursor           ctermfg=0       ctermbg=5       cterm=none
" " highlight htmlEndTag       ctermfg=114     ctermbg=none    cterm=none
" " highlight xmlEndTag        ctermfg=114     ctermbg=none    cterm=none


