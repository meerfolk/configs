runtime! debian.vim

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number

execute pathogen#infect()

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
call vundle#end()

let g:tern_map_keys = 1
let g:tern_show_argument_hints='on_hold'

let g:javascript_plugin_jsdoc = 1

noremap <Leader>y "+y
noremap <Leader>p "+p

