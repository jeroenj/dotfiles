call plug#begin('~/.local/share/nvim/plug')

Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'Mofiqul/dracula.nvim', { 'as': 'dracula' }
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
if has('mac')
  Plug '/opt/homebrew/opt/fzf'
else
  Plug '/usr/bin/fzf'
endif
Plug 'hashivim/vim-terraform'
Plug 'mileszs/ack.vim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'ojroques/vim-oscyank'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'sjl/vitality.vim'
Plug 'skwp/greplace.vim'
Plug 'slim-template/vim-slim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-crystal/vim-crystal'
Plug 'wesQ3/vim-windowswap'

call plug#end()
