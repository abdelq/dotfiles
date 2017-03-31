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

Plug 'junegunn/fzf',                  {'dir': '~/.fzf', 'do': './install --all'}

Plug 'vim-syntastic/syntastic'

Plug 'python-mode/python-mode',       {'for': 'python'}
Plug 'pangloss/vim-javascript',       {'for': 'javascript'}
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
Plug 'neovimhaskell/haskell-vim',     {'for': 'haskell'}
Plug 'rust-lang/rust.vim',            {'for': 'rust'}
Plug 'arrufat/vala.vim',              {'for': 'vala'}
Plug 'lervag/vimtex',                 {'for': 'tex'}
call plug#end()

" morhetz/gruvbox
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=1
colorscheme gruvbox

" itchyny/lightline.vim
" TODO component shown syntastic
let g:lightline = {
	\'colorscheme': 'gruvbox',
	\'active': {
		\'left': [
			\['mode', 'paste'],
			\['filename', 'readonly'],
			\['fugitive', 'modified']
		\],
		\'right': [
			\['syntastic', 'lineinfo'],
			\['filetype'],
			\['fileencoding']
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

augroup AutoSyntastic
	autocmd!
augroup END

function! s:syntastic()
	SyntasticCheck
	call lightline#update()
endfunction

" scrooloose/nerdcommenter
let g:NERDCommentWholeLinesInVMode=1
let g:NERDSpaceDelims=1

" junegunn/vim-easy-align

" tpope/vim-surround

" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup=1

" Shougo/neosnippet.vim
let g:neosnippet#enable_completed_snippet=1

" Shougo/neosnippet-snippets

" honza/vim-snippets

" tpope/vim-fugitive

" airblade/vim-gitgutter
let g:gitgutter_override_sign_column_highlight=1

" junegunn/fzf

" vim-syntastic/syntastic
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=1

" python-mode/python-mode
let g:pymode_folding=0
let g:pymode_lint_checkers=['pycodestyle', 'pyflakes']
let g:pymode_rope=0
" TODO

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc=1

" artur-shaik/vim-javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete
" TODO

" neovimhaskell/haskell-vim
" TODO

" rust-lang/rust.vim
"let g:rust_fold=0
let g:rustfmt_autosave=1

" arrufat/vala.vim
autocmd FileType vala ValaCodingStyle

" lervag/vimtex
"let g:vimtex_complete_close_braces=1
"let g:vimtex_format_enabled=1
"let g:vimtex_index_hide_line_numbers=0
" TODO
