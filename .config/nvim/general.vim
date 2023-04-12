set shell=/bin/bash

set clipboard=unnamed

syntax on
set number
set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
au FocusLost * :set norelativenumber
au FocusGained * :set relativenumber

set mouse=

let g:dracula_colorterm = 0
color dracula

if $TERM == "xterm-256color"
  set t_Co=256
end

set list
set list listchars=tab:»·,trail:·,nbsp:·

set tabstop=2
set shiftwidth=2
set expandtab

cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq

set hlsearch incsearch

let mapleader=","

" Open new split panes to right and bottom
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <space> zz

nnoremap <leader>n :NERDTree<CR>

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

let g:ale_lint_delay = 500
let g:ale_sign_error = '!!'
let g:ale_sign_warning = '..'
let g:ale_ruby_brakeman_options = '--only-files %s'
let g:ale_yaml_yamllint_options = '--config-data relaxed'

fun! <SID>StripTrailingWhitespaces()
  if exists('b:noStripWhitespace')
    return
  endif
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd BufWritePre *.conf.erb let b:noStripWhitespace=1
autocmd FileType * autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

let g:fzf_layout = { 'down': '~20%' }

nnoremap ,ff :FZF<cr>
nnoremap <C-P> :FZF<cr>

set modifiable

let g:gitgutter_realtime = 0
set updatetime=750

let g:ackhighlight = 1
let g:ack_use_cword_for_empty_search = 1
if executable('rg')
   let g:ackprg = 'rg --vimgrep --smart-case --hidden --no-ignore-vcs --glob="!.terraform/" --glob="!.git"'
 endif

let g:terraform_align=1
let g:terraform_fmt_on_save=1

" Save files with sudo
cmap w!! w !sudo tee > /dev/null %

" Allow files to be modified when hidden
set hidden

au BufRead,BufNewFile Berksfile,Brewfile,Capfile,Guardfile,UserGemfile set filetype=ruby
au BufRead,BufNewFile Procfile,Procfile.dev set filetype=yaml
au BufNewFile,BufRead ?\+.tftpl exe "doau filetypedetect BufRead " . fnameescape(expand("<afile>:r"))

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
}
EOF
