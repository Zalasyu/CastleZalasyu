call plug#begin ('~/.vim/plugged')
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'https://github.com/aonemd/kuroi.vim.git'
Plug 'junegunn/limelight.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme'
Plug 'dense-analysis/ale'
Plug 'raimondi/delimitmate'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
call plug#end()

filetype plugin indent on

"Rainbow Parentheses
let g:rainbow_active = 1

"Hybrid Auto-Line Numbering
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Override Line Number colours
if has('autocmd')
				augroup coloroverride
								autocmd!
								autocmd ColorScheme * highlight LineNr  ctermfg=darkyellow guifg=darkyellow " Override LineNr
								autocmd ColorScheme * highlight CursorLineNr  ctermfg=White guifg=White " Override CursorLineNr
				augroup END
endif

" Encoding UTF
set encoding=utf-8

"  Colourscheme
set t_Co=256
set background=dark
colorscheme kuroi

" Turn on Syntax Highlighting
:syntax on

" ALE Config
let g:ale_sign_column_always = 1
let b:ale_linters = ['mypy']

" YCM Config Preview Window Autoclose
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" tpope/Plasticboy Settings
autocmd FileType *.markdown, *.md set concealLevel = 0
autocmd FileType *.markdown, *.md normal zR

" Set spell check to British English
autocmd FileType markdown setlocal spell spelllang=en_gb

" Disable error bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"Remap the ESC key to normal mode
:imap ;; <Esc>

"Cold Folding Settings
set foldmethod=indent

"Vim Splits Navigations Remap
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Vim Split Behaviour Config
set splitbelow
set splitright
