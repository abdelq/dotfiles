let mapleader=','

map ; :

" junegunn/vim-easy-align
"xmap ga <Plug>(EasyAlign)
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" junegunn/fzf
map <C-P> :FZF<CR>

" arrufat/vala.vim
autocmd FileType vala noremap <F8> :CCode<CR>
