fun! PsqlPW()
let s:db = getline(1)[3:]
exec 'w !psql '.s:db' &> ~/temp/sqlres'.expand('%:t')
ped ~/temp/sqlres%:t
endfun
