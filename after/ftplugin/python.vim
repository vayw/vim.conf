set nu

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
