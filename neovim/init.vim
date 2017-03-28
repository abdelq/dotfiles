" Moving around, searching and patterns
set ignorecase
set smartcase

" Displaying text
"set scrolloff=1
"set sidescrolloff=5
set lazyredraw
set list
set number
set relativenumber

" Syntax, highlighting and spelling
set background=dark
set cursorline

" Multiple windows
set splitbelow
set splitright

" Terminal
set title

" Messages and info
set ruler

" Tabs and indenting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

" Mapping
set ttimeout

map ; :
let mapleader=','

" Reading and writing files
"set binary

" Plugins
call plug#begin()
Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
"Plug 'honza/vim-snippets'
"Plug 'zchee/deoplete-jedi'
"Plug 'Rip-Rip/clang_complete'
"Plug 'artur-shaik/vim-javacomplete2'
"Plug 'Shougo/neco-vim'

Plug 'tpope/vim-repeat'
call plug#end()

" Plugin: gruvbox
"let g:gruvbox_italic=1
"let g:gruvbox_invert_signs=1
"let g:gruvbox_invert_indent_guides=1
"let g:gruvbox_invert_tabline=1
"let g:gruvbox_improved_strings=1
"let g:gruvbox_improved_warnings=1
colorscheme gruvbox

" Plugin: nerdcommenter
let g:NERDSpaceDelims=1
"let g:NERDCompactSexyComs=1
"let g:NERDAltDelims_java=1
"let g:NERDCustomDelimiters={ 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines=1
"let g:NERDTrimTrailingWhitespace=1
" TODO Check :help nerdcommenter

" Plugin: vim-repeat
" TODO Add calls, check Github

" Plugin: deoplete.nvim
let g:deoplete#enable_at_startup=1
"let g:deoplete#complete_method
"let g:deoplete#enable_camel_case
"let g:deoplete#delimiters
"let g:deoplete#sources
"let g:deoplete#omni#functions
"let g:deoplete#file#enable_buffer_path
"let g:deoplete#buffer#require_same_filetype













" https://github.com/neovim/neovim/wiki/Related-projects
" vim-plug itself ?
"Plug 'itchyny/lightline.vim'

"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'

"Plug 'vim-syntastic/syntastic' " or ale?
"Plug 'junegunn/vim-easy-align'
"repeat.vim
" Languages
"Plug 'mattn/emmet-vim',         {'for': 'html'}
"Plug 'pangloss/vim-javascript', {'for': 'javascript'}
"Plug 'python-mode/python-mode', {'for': 'python'}
"Plug 'fatih/vim-go',            {'for': 'go'}
"Plug 'vim-ruby/vim-ruby',       {'for': 'ruby'}
"Plug 'elixir-lang/vim-elixir',  {'for': 'elixir'}
"Plug 'rust-lang/rust.vim',      {'for': 'rust'}
"Plug 'arrufat/vala.vim',        {'for': 'vala'}
"Plug 'lervag/vimtex',           {'for': 'tex'}

"Plug 'tpope/vim-repeat'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'cespare/vim-toml',                    {'for': 'toml'}
"Plug 'dag/vim-fish',                        {'for': 'fish'}
"Plug 'ekalinin/Dockerfile.vim',             {'for': 'dockerfile'}
"Plug 'hdima/python-syntax',                 {'for': 'python'}
"Plug 'ingydotnet/yaml-vim',                 {'for': 'yaml'}
"Plug 'nlknguyen/c-syntax.vim',              {'for': 'c'}
"Plug 'sebastianmarkow/deoplete-rust',       {'for': 'rust'}
"Plug 'zchee/deoplete-clang',                {'for': ['c', 'cpp']}
"Plug 'zchee/deoplete-go', {'for': 'go', 'do': 'make'}
"Plug 'airblade/vim-gitgutter'
"Plug 'andrewradev/sideways.vim'
"Plug 'andrewradev/splitjoin.vim'
"Plug 'ap/vim-buftabline'
"Plug 'itchyny/lightline.vim'
"Plug 'jiangmiao/auto-pairs'
""Plug 'junegunn/fzf'
"Plug 'junegunn/gv.vim',                     {'on': 'GV'}
"Plug 'junegunn/vim-easy-align',             {'on': ['<Plug>(EasyAlign)', 'EasyAlign']}
"Plug 'junegunn/vim-peekaboo'
"Plug 'ntpeters/vim-better-whitespace'
"Plug 'rhysd/committia.vim'
"Plug 'rking/ag.vim',                        {'on': 'Ag'}
"Plug 'sbdchd/neoformat',                    {'on': 'NeoFormat'}
"Plug 'shougo/deoplete.nvim',                {'do': ':UpdateRemotePlugins'}
"Plug 'shougo/neosnippet.vim'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'tpope/vim-abolish'
"Plug 'tpope/vim-eunuch'
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-surround'
"Plug 'vim-utils/vim-troll-stopper'
"Plug 'w0rp/ale'
"Plug 'wellle/targets.vim'
"Plug 'whatyouhide/vim-gotham'

"silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)



" Plugin: lightline.vim
"let g:lightline = {
"	\ 'colorscheme': 'gruvbox',
"	\ 'component': {
"		\ 'readonly': '%{&readonly?"🔒":""}',
"		\ 'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
"	\ },
"	\ 'component_visible_condition': {
"		\ 'readonly': '&readonly',
"		\ 'fugitive': 'exists("*fugitive#head")'
"	\ },
"	\ 'active': {
"		\ 'left': [
"					\ [ 'mode', 'paste' ],
"					\ [ 'filename' ],
"					\ [ 'modified', 'readonly', 'fugitive' ]
"				\ ]
"	\ }
"\ }
" TODO Config for: CtrlP Tagbar Gundo NERDtree Syntastic unite.vim vimfiler.vim vimshell.vim

" Plugin: deoplete.nvim
"let g:deoplete#enable_at_startup = 1

" Plugin: neosnippet.vim
"let g:neosnippet#snippets_directory = '~/.config/nvim/plugged/vim-snippets/snippets'
