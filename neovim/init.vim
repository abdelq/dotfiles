" Option: Moving around, searching and patterns
set ignorecase
"set smartcase

" Option: Displaying text
"set lazyredraw
set list
set number
set relativenumber

" Option: Syntax, highlighting and spelling
set background=dark
set cursorline

" Option: Multiple windows
set splitbelow
set splitright

" Option: Terminal
set title

" Option: Messages and info
set ruler " TODO Is it required if I use lightline?

" Option: Tabs and indenting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"set smartindent

" Option: Mapping
"set ttimeout

" Mappings
let mapleader=','
map ; :

" Plugins
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'python-mode/python-mode' ", {'for': 'python'}
Plug 'fatih/vim-go' ",            {'for': 'go', 'do': ':GoInstallBinaries'}
Plug 'elixir-lang/vim-elixir' ",  {'for': 'elixir'}
Plug 'pangloss/vim-javascript' ", {'for': 'javascript'}
Plug 'rust-lang/rust.vim' ",      {'for': 'rust'}
Plug 'arrufat/vala.vim' ",        {'for': 'vala'}
call plug#end()

" Plugin: gruvbox
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=1
"let g:gruvbox_improved_warnings=1
colorscheme gruvbox

" Plugin: nerdcommenter
let g:NERDCommentEmptyLines=1
let g:NERDCommentWholeLinesInVMode=1
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1

" Plugin: vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Plugin: deoplete.nvim
let g:deoplete#enable_at_startup=1

" Plugin: vim-gitgutter
let g:gitgutter_override_sign_column_highlight=1

" Plugin: python-mode
let g:pymode_folding=0
let g:pymode_lint_checkers=['pycodestyle', 'pyflakes']
let g:pymode_rope=0
" TODO set $VIRTUAL_ENV

" Plugin: vim-go
"let g:go_snippet_engine='ultisnips'
" TODO :help vim-go
" TODO Review mapping section
" TODO set $GOPATH

" Plugin: vim-javascript
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_flow=1

" Plugin: rust.vim
" TODO https://github.com/rust-lang/rust.vim

" Plugin: vala.vim
autocmd FileType vala ValaCodingStyle
autocmd FileType vala noremap <F8> :CCode<CR>



















"Plug 'zchee/deoplete-jedi'
"Plug 'Rip-Rip/clang_complete'
"Plug 'artur-shaik/vim-javacomplete2'
"Plug 'Shougo/neco-vim'
" Review filetypes and their settings

"https://github.com/sirver/UltiSnips
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
"Plug 'honza/vim-snippets'
"Plug 'vim-syntastic/syntastic'


" https://github.com/neovim/neovim/wiki/Related-projects
" vim-plug itself ?
"Plug 'itchyny/lightline.vim'

"Plug 'ctrlpvim/ctrlp.vim' or Plug 'junegunn/fzf' ?

"Plug 'junegunn/vim-easy-align'
"repeat.vim
" Languages
"Plug 'mattn/emmet-vim',         {'for': 'html'}
"Plug 'vim-ruby/vim-ruby',       {'for': 'ruby'}
"Plug 'lervag/vimtex',           {'for': 'tex'}

"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'cespare/vim-toml',                    {'for': 'toml'}
"Plug 'ekalinin/Dockerfile.vim',             {'for': 'dockerfile'}
"Plug 'ingydotnet/yaml-vim',                 {'for': 'yaml'}
"Plug 'nlknguyen/c-syntax.vim',              {'for': 'c'}
"Plug 'sebastianmarkow/deoplete-rust',       {'for': 'rust'}
"Plug 'zchee/deoplete-clang',                {'for': ['c', 'cpp']}
"Plug 'zchee/deoplete-go', {'for': 'go', 'do': 'make'}
"Plug 'andrewradev/sideways.vim'
"Plug 'andrewradev/splitjoin.vim'
"Plug 'ap/vim-buftabline'
"Plug 'jiangmiao/auto-pairs'
"Plug 'junegunn/gv.vim',                     {'on': 'GV'}
"Plug 'junegunn/vim-peekaboo'
"Plug 'ntpeters/vim-better-whitespace'
"Plug 'rhysd/committia.vim'
"Plug 'rking/ag.vim',                        {'on': 'Ag'}
"Plug 'sbdchd/neoformat',                    {'on': 'NeoFormat'}
"Plug 'terryma/vim-multiple-cursors'
"Plug 'tpope/vim-abolish'
"Plug 'tpope/vim-eunuch'
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

" Plugin: neosnippet.vim
"let g:neosnippet#snippets_directory = '~/.config/nvim/plugged/vim-snippets/snippets'
