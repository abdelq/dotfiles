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

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-syntastic/syntastic'

Plug 'fatih/vim-go',                  {'for': 'go', 'do': ':GoInstallBinaries'}
Plug 'elixir-lang/vim-elixir',        {'for': 'elixir'}
Plug 'pangloss/vim-javascript',       {'for': 'javascript'}
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
Plug 'neovimhaskell/haskell-vim',     {'for': 'haskell'}
call plug#end()

" morhetz/gruvbox
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=1
colorscheme gruvbox

" itchyny/lightline.vim
let g:lightline={
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

" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup=1

" Shougo/neosnippet.vim
let g:neosnippet#snippets_directory='~/.config/nvim/plugged/vim-snippets/snippets'
let g:neosnippet#enable_snipmate_compatibility=1

" airblade/vim-gitgutter
let g:gitgutter_override_sign_column_highlight=1

" vim-syntastic/syntastic
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" fatih/vim-go
let g:go_auto_type_info=1
let g:go_updatetime=500
let g:go_snippet_engine='neosnippet'
let g:go_get_update=0

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc=1

" artur-shaik/vim-javacomplete2
let g:JavaComplete_UsePython3=1
autocmd FileType java setlocal omnifunc=javacomplete#Complete
