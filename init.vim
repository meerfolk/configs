call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim
Plug 'glepnir/oceanic-material'
call plug#end()

set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start
set noswapfile
set rnu
set cursorline
set incsearch
set wildignore+=*/node_modules/*,*/.git/*,*/yarn-mirror/*

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

nnoremap <silent> <C-q> :NERDTreeToggle<CR>
nnoremap <silent> <S-q> :NERDTreeFind %<CR>
" CoC extensions
let g:coc_global_extensions = ['coc-solargraph', 'coc-tsserver', 'coc-json', 'coc-pairs']

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Add CoC ESLint if ESLint is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" fzf section
set rtp+=~/.fzf
nnoremap <C-p> :GFiles<Cr>
nnoremap <C-g> :Ag <Cr>

noremap <Leader>y "+y
noremap <Leader>p "+p

" colorscheme section
set background=dark
colorscheme oceanic_material
