set nu
set tabstop=4
set shiftwidth=4
autocmd BufWritePre *.go normal m`:%s/\s\+$//e ``
