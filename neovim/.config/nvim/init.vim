" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Languages
Plug 'mattn/emmet-vim' " HTML
Plug 'lervag/vimtex' " LaTeX
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' } " Go
" Pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
call plug#end()

" Colors
colorscheme gruvbox
set background=dark
let g:lightline={ 'colorscheme': 'gruvbox' }

" UI
set cursorline
set number
set relativenumber
set splitright
set splitbelow
set nofoldenable

" Autocompletion
let g:deoplete#enable_at_startup=1

" Indentation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
