call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'majutsushi/tagbar'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'junegunn/vim-easy-align'
Plug 'PeterRincker/vim-argumentative'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'rhysd/vim-clang-format'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" language specific plugins
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'Vimjas/vim-python-pep8-indent', {'for': 'python'}
Plug 'tikhomirov/vim-glsl'
Plug 'mattn/emmet-vim', {'for': ['html', 'css', 'htmldjango']}
Plug 'kongo2002/fsharp-vim', {'for': 'fsharp'}
Plug 'JuliaLang/julia-vim', {'for': 'julia'}
Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}
Plug 'l04m33/vlime', {'rtp': 'vim/'}

Plug 'rust-lang/rust.vim'

call plug#end()
