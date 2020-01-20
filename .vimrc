runtime! debian.vim

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
set noswapfile
set rnu
set cursorline
set incsearch

autocmd InsertEnter,InsertLeave * set cul!

syntax on

filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-stylus'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'crusoexia/vim-monokai'
Plugin 'w0rp/ale'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'zxqfl/tabnine-vim'
Plugin 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'PieterjanMontens/vim-pipenv'
call vundle#end()

colorscheme monokai

nnoremap <silent> <C-B> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2

let g:NERDTreeTabsOpen=1

let g:ctrlp_custom_ignore = '\.git$'
let g:ctrlp_custom_ignore = '\/node_modules\/'

let g:tern_map_keys = 1
let g:tern_show_argument_hints='on_hold'

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
 
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'

let g:ale_fix_on_save = 1

let g:javascript_plugin_jsdoc = 1

noremap <Leader>y "+y
noremap <Leader>p "+p

