" Moving around, searching and patterns
set ignorecase
set smartcase
"include
"includeexpr

" Displaying text
set scrolloff=1
"showbreak
set display+=uhex
"fillchars
set lazyredraw
set list
set number
"conceallevel
"concealcursor

" Syntax, highlighting and spelling
set termguicolors
set cursorline
set colorcolumn=81
"spellfile
"spellcapcheck
"spellsuggest

" Multiple windows
"statusline
set splitbelow
set splitright

" Multiple tab pages
"tabline

" Terminal
set title
set titlestring=nvim\ %f\ %r

" Using the mouse
set mouse=a

" Messages and info
"terse
"shortmess
"verbose

" Selecting text
set clipboard=unnamed

" Editing text
"wrapmargin
"completefunc
"omnifunc
set dictionary+=/usr/share/dict/words
set tildeop
set nrformats+=alpha

" Tabs and indenting
"tabstop
set shiftwidth=4
"softtabstop
"shiftround
set expandtab
set smartindent
"cinoptions
"copyindent
"preserveindent

" Folding
set foldlevelstart=99
"foldcolumn
"foldtext
"foldclose
"foldopen
"foldmethod
"foldignore
"foldmarker

" Command line editing
set wildmode=longest,full
"suffixes
"suffixesadd
set wildignorecase
set inccommand=nosplit

" Executing external commands
set shell=sh

" Running make and jumping to errors
set grepprg=rg\ --vimgrep
"grepformat

" Language specific
"termbidi
"langmap
"iminsert
"imsearch

" Multi-byte characters
"fileencodings
"charconvert

" Various
"virtualedit
set secure
"viewoptions
