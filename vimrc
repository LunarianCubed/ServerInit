call plug#begin('~/.vim/plugged')

Plug 'prabirshrestha/vim-lsp'

if executable('ccls')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'ccls',
        \ 'cmd': {server_info->['ccls']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif

Plug 'mattn/vim-lsp-settings'

Plug 'octol/vim-cpp-enhanced-highlight'

let g:cpp_class_scope_highlight = 1 
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

" Autocompletion, requires to run `npm ci` in 
" `~/.vim/plugged/coc.nvim/`
" Plug 'neoclide/coc.nvim', {'brance':'release'}


autocmd FileType c nnoremap <buffer> <Leader>l :CocCommand clangd.executeCommand <CR>


call plug#end()

set number
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nowrap

syntax on
set cursorline
set showmatch
set so=5

set smartcase
set hlsearch
set incsearch
set ignorecase
set mouse=a
set clipboard=unnamedplus

set termguicolors
colorscheme solarized8
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE

set bg=dark
