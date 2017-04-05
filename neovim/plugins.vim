call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'

Plug 'Shougo/deoplete.nvim',          {'do': ':UpdateRemotePlugins'}
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf.vim'

Plug 'vim-syntastic/syntastic'

"Plug 'fatih/vim-go',                 {'for': 'go', 'do': ':GoInstallBinaries'}
"Plug 'python-mode/python-mode',      {'for': 'python'}
Plug 'pangloss/vim-javascript',       {'for': 'javascript'}
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
"Plug 'elixir-lang/vim-elixir',       {'for': 'elixir'}
"Plug 'vim-ruby/vim-ruby',            {'for': 'ruby'}
"Plug 'neovimhaskell/haskell-vim',    {'for': 'haskell'}
"Plug 'rust-lang/rust.vim',           {'for': 'rust'}
"Plug 'lervag/vimtex',                {'for': 'tex'}
call plug#end()

" morhetz/gruvbox
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=1
colorscheme gruvbox

" itchyny/lightline.vim
let g:lightline = {
	\'colorscheme': 'gruvbox',
	\'active': {
		\'left': [
			\['mode', 'paste'],
			\['filename', 'readonly'],
			\['fugitive', 'modified']
		\],
		\'right': [
			\['lineinfo'],
			\['filetype', 'fileencoding'],
			\['syntastic']
		\],
	\},
	\'component_function': {
		\'fugitive': 'LightlineFugitive'
	\},
	\'component_expand': {
		\'syntastic': 'SyntasticStatuslineFlag'
	\},
	\'component_type': {
		\'syntastic': 'error'
	\}
\}

function! LightlineFugitive()
	return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

" scrooloose/nerdcommenter
let g:NERDCommentWholeLinesInVMode=1
let g:NERDSpaceDelims=1

" junegunn/vim-easy-align

" tpope/vim-surround

" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup=1

" Shougo/neosnippet.vim
let g:neosnippet#snippets_directory='~/.config/nvim/plugged/vim-snippets/snippets'
let g:neosnippet#enable_snipmate_compatibility=1
let g:neosnippet#enable_completed_snippet=1

" Shougo/neosnippet-snippets

" honza/vim-snippets

" tpope/vim-fugitive

" airblade/vim-gitgutter
let g:gitgutter_override_sign_column_highlight=1

" junegunn/fzf.vim

" vim-syntastic/syntastic
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" fatih/vim-go

" python-mode/python-mode

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc=1

" artur-shaik/vim-javacomplete2
let g:JavaComplete_UsePython3=1
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" elixir-lang/vim-elixir

" vim-ruby/vim-ruby

" neovimhaskell/haskell-vim

" rust-lang/rust.vim

" lervag/vimtex
