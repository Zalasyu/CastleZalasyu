call plug#begin ('~/.vim/plugged')
Plug 'luochen1990/rainbow'
Plug 'terryma/vim-multiple-cursors'
Plug 'plasticboy/vim-markdown'
Plug 'https://github.com/aonemd/kuroi.vim.git'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': [ 'markdown', 'vim-plug' ]}
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

" tpope/Plasticboy Settings
autocmd FileType markdown set concealLevel = 0
autocmd FileType markdown normal zR


" set to 1, the vim will refresh markdown when save the buffer or
" " leave from insert mode, default 0 is auto refresh markdown as you edit or
" " move the cursor
" " default: 0
let g:mkdp_refresh_slow = 1

" set to 1, the MarkdownPreview command can be use for all files,
" " by default it can be use in markdown file
" " default: 0
let g:mkdp_command_for_global = 1
"
" " set to 1, preview server available to others in your network
" " by default, the server listens on localhost (127.0.0.1)
" " default: 0
let g:mkdp_open_to_the_world = 1


" Disable error bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"Remap the ESC key to normal mode
:imap ;; <Esc>
