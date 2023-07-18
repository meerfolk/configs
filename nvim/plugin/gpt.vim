autocmd BufNewFile,BufRead *.gpt  setfiletype gpt

fun! GetCompletion()
exec '!node ~/projects/pets/gpt/src/main.js ~/temp/temp.gpt'
ed ~/temp/temp.gpt
endfun

command! GPT lua require'gpt'.main()

