au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

set nu
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
