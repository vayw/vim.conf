set nocompatible
syntax on
filetype on
filetype plugin on

let python_highlight_all = 1

set t_Co=256

vmap <C-C> "+yi
imap <C-V> "+gPi

set mousehide "Спрятать курсор мыши когда набираем текст
set termencoding=utf-8 "Кодировка терминала

set novisualbell "Не мигать

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
