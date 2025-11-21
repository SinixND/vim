set nocompatible
filetype plugin indent on
let mapleader = " "

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Download plug-ins to the ~/.vim/after/ directory
call plug#begin('~/.vim/after')     
Plug 'vim-scripts/vim-plug'

" Color theme
Plug 'cocopon/iceberg.vim'            
" Statusline
" Plug 'vim-airline/vim-airline'
" Comments
Plug 'tpope/vim-commentary'

call plug#end()

packadd termdebug

" Mappings
nnoremap <ESC><ESC> :nohl<CR><ESC>

nnoremap <leader>drl :Termdebug lldb<CR>
nnoremap <leader>drg :Termdebug gdb<CR>
nnoremap <leader>db :ToggleBreak <CR>
nnoremap <leader>ds :Step <CR> " execute the gdb 'step' command
nnoremap <leader>dn :Over <CR> " execute the gdb 'next' command (`:Next` is a Vim command)
nnoremap <leader>du :Until <CR> " execute the gdb 'until' command
nnoremap <leader>df :Finish <CR> " execute the gdb 'finish' command
" nnoremap <leader>dc :Continue <CR> " execute the gdb 'continue' command
nnoremap <leader>dc :RunOrContinue <CR> " execute the gdb 'continue' command if program is running, otherwise run the program
nnoremap <leader>dt :Stop <CR> " Kill/interrupt the program
let g:termdebug_config = {}
let g:termdebug_config['evaluate_in_popup'] = v:true
nnoremap <leader>de :Evaluate <CR> " Kill/interrupt the program


""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set ignorecase
set smartcase

set number
set list
set listchars=eol:$,tab:\|\->,trail:~,extends:>,precedes:<,space:·,nbsp:+

colorscheme iceberg
set termguicolors
set background=dark

set incsearch
set hlsearch
set splitbelow
set path+=**
set wildmenu
" set wildmode=noselect:lastused,full,longest
set wildmode=longest,full
set wildoptions=pum

set mouse=a
" set clipboard+=unnamedplus
set clipboard=unnamedplus

syntax enable
set autocomplete
set completeopt=menu,fuzzy,noselect,noinsert,nearest,preview
set omnifunc=ccomplete#Complete
set shortmess+=c
set hidden

set tags=./tags;/,./.tags;/
nnoremap <leader>ct :silent !ctags -R -f .tags . <CR>
nnoremap <leader>cst :silent !ctags -R -f .tagsSystem $PREFIX/include $PREFIX/local/include <CR> \| set tags+=.tagsSystem

