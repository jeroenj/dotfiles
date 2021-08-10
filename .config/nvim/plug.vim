call plug#begin('~/.local/share/nvim/plug')

Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
if has('mac')
  Plug '/usr/local/opt/fzf'
else
  Plug '/usr/bin/fzf'
endif
Plug 'hashivim/vim-terraform'
Plug 'kchmck/vim-coffee-script'
Plug 'mileszs/ack.vim'
Plug 'ojroques/vim-oscyank'
Plug 'pangloss/vim-javascript'
Plug 'rhysd/vim-crystal'
Plug 'rorymckinley/vim-symbols-strings'
Plug 'scrooloose/nerdtree'
Plug 'sjl/vitality.vim'
Plug 'skwp/greplace.vim'
Plug 'slim-template/vim-slim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'wesQ3/vim-windowswap'
Plug 'yaymukund/vim-rabl'

call plug#end()
