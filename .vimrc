runtime! debian.vim

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start
set noswapfile
set rnu
set cursorline
set incsearch
set wildignore+=*/node_modules/*,*/.git/*,*/yarn-mirror/*

autocmd InsertEnter,InsertLeave * set cul!
au BufReadPost *.stache,*.hbs set syntax=mustache

filetype plugin indent on

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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'neoclide/coc.nvim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'jremmen/vim-ripgrep'
Plugin  'altercation/vim-colors-solarized'
call vundle#end()
 
syntax enable

nnoremap <silent> <C-B> :NERDTreeToggle<CR>
nnoremap <silent> <S-B> :NERDTreeFind %<CR>
xnoremap <C-F> "fy:Rg <C-R>f<CR>

let g:NERDTreeChDirMode=2

let g:NERDTreeTabsOpen=1

let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 20
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set runtimepath^=~/.vim/bundle/ctrlp.vim


let g:tern_map_keys = 1
let g:tern_show_argument_hints='on_hold'

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
 
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'

let g:ale_fix_on_save = 1

let g:javascript_plugin_jsdoc = 1

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-html', 
  \ ]

noremap <Leader>y "+y
noremap <Leader>p "+p

