" Options
source ~/.config/nvim/options.vim

" Plugins
source ~/.config/nvim/plugins.vim

" Mappings
let mapleader=','
map ; :

" Commands: junegunn/vim-easy-align
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Completion: Shougo/neosnippet.vim
imap <expr><TAB>
            \ pumvisible() ? "\<C-n>" :
            \ neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB>
            \ neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><CR>
            \ (pumvisible() && neosnippet#expandable()) ?
            \ "\<Plug>(neosnippet_expand)" : "\<CR>"
