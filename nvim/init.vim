lua require('plugins')

set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start
set noswapfile
set rnu
set cursorline
set incsearch
set wildignore+=*/node_modules/*,*/.git/*,*/yarn-mirror/*
set signcolumn=yes
set updatetime=100

nnoremap <silent> <C-q> :NvimTreeToggle<CR>
nnoremap <silent> <S-q> :NvimTreeFindFileToggle<CR>
" CoC extensions
let g:coc_global_extensions = ['coc-solargraph', 'coc-tsserver', 'coc-json', 'coc-pairs', 'coc-pyright', 'coc-tabnine']

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Add CoC Git if git is inited
if isdirectory('./.git')
  let g:coc_global_extensions += ['coc-git']
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
nnoremap <C-p> :GFiles --cached --others --exclude-standard<Cr>
nnoremap <C-g> :Ag <Cr>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

noremap <Leader>y "+y
noremap <Leader>p "+p

" colorscheme section
colorscheme nordfox

if exists('$TMUX')
    " tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
    let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
    let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
    autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
else
    let &t_SI .= "\<Esc>[4 q"
    let &t_EI .= "\<Esc>[2 q"
    autocmd VimLeave * silent !echo -ne "\033[0 q"
endi

" Use K to show documentation in preview window
nnoremap <silent> T :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
