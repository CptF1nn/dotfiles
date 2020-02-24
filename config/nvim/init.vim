set nu
set ai
set incsearch
set hlsearch
set ts=4
set shiftwidth=8
set ic
set cindent
set cursorline
set splitright
set bg=dark
set whichwrap+=<,>,h,l,[,]
set shell=/bin/bash
"set mouse=a

autocmd BufWritePre * :%s/\s\+$//e

syntax enable
set hidden
"noremap <F8> <Esc>:syntax on<CR>
"inoremap <F8> <C-o>:syntax on<CR>

set t_Co=256

let Tlist_WinWidth = 10
nmap <F7>  :TrinityToggleTagList<CR>
nmap <F12>  :TrinityToggleNERDTree<CR>

call plug#begin('~/.local/share/nvim/plugged')
		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
		Plug 'zchee/deoplete-jedi'
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'jiangmiao/auto-pairs'
		Plug 'scrooloose/nerdcommenter'
		Plug 'sbdchd/neoformat'
		Plug 'scrooloose/nerdtree'
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:airline_theme='simple'

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_basic_format_retab = 1
