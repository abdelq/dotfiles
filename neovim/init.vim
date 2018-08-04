" Autocommands
autocmd FileType text,markdown,*tex setlocal spell

" Mappings
let mapleader = ","

map ; :
nnoremap <M-PageUp> :bnext<CR>
nnoremap <M-PageDown> :bprevious<CR>

" Runtimes
runtime options.vim
runtime plugins.vim
runtime syntax.vim
runtime user.vim
