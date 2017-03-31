" Options
source ~/.config/nvim/options.vim

" Plugins
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

source ~/.config/nvim/plugins.vim

" Mappings
source ~/.config/nvim/mappings.vim
