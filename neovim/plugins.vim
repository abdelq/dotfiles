call plug#begin()
" Code Display
Plug 'morhetz/gruvbox'

" Interface
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'

" Integrations
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'

" Commands
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'

" Completion
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" Language
Plug 'fatih/vim-go',                  {'for': 'go', 'do': ':GoInstallBinaries'}
Plug 'elixir-lang/vim-elixir',        {'for': 'elixir'}
Plug 'pangloss/vim-javascript',       {'for': 'javascript'}
Plug 'neovimhaskell/haskell-vim',     {'for': 'haskell'}
"Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
Plug 'plasticboy/vim-markdown',       {'for': 'markdown'}
Plug 'vim-pandoc/vim-pandoc',         {'for': 'pandoc'}
Plug 'vim-pandoc/vim-pandoc-syntax',  {'for': 'pandoc'}
Plug 'ledger/vim-ledger',             {'for': 'ledger'}
call plug#end()

" Code Display: morhetz/gruvbox
let g:gruvbox_invert_signs=1
colorscheme gruvbox

" Interface: itchyny/lightline.vim
let g:lightline={
	\ 'colorscheme': 'gruvbox',
	\ 'active': {
		\ 'left': [
			\ ['mode', 'paste'],
			\ ['filename', 'readonly'],
			\ ['fugitive', 'modified']
		\ ],
		\ 'right': [
			\ ['lineinfo'],
			\ ['filetype', 'fileencoding'],
			\ ['syntastic']
		\ ],
	\ },
	\ 'component_function': {
		\ 'fugitive': 'LightlineFugitive'
	\ },
	\ 'component_expand': {
		\ 'syntastic': 'SyntasticStatuslineFlag'
	\ },
	\ 'component_type': {
		\ 'syntastic': 'error'
	\ }
\ }

function! LightlineFugitive()
	return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

" Interface: airblade/vim-gitgutter
let g:gitgutter_override_sign_column_highlight=1

" Integrations: vim-syntastic/syntastic
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" Commands: scrooloose/nerdcommenter
let g:NERDCommentWholeLinesInVMode=1

" Completion: Shougo/deoplete.nvim
let g:deoplete#enable_at_startup=1

" Completion: Shougo/neosnippet.vim
let g:neosnippet#snippets_directory='~/.config/nvim/plugged/vim-snippets/snippets'
let g:neosnippet#enable_snipmate_compatibility=1

" Language: fatih/vim-go
let g:go_auto_type_info=1
let g:go_updatetime=500
let g:go_snippet_engine='neosnippet'
let g:go_get_update=0

" Language: pangloss/vim-javascript
let g:javascript_plugin_jsdoc=1

" Language: artur-shaik/vim-javacomplete2
"let g:JavaComplete_UsePython3=1
"autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Language: plasticboy/vim-markdown
"set conceallevel=2
"let g:vim_markdown_math = 1
"let g:vim_markdown_frontmatter = 1
"let g:vim_markdown_toml_frontmatter = 1
"TOML syntax highlight requires vim-toml [8].
"let g:vim_markdown_json_frontmatter = 1
"let g:vim_markdown_no_extensions_in_markdown = 1
"let g:vim_markdown_autowrite = 1
"Requires Tabular [11].

" Language: vim-pandoc/vim-pandoc
let g:pandoc#filetypes#pandoc_markdown=0
let g:pandoc#modules#disabled=['spell']
