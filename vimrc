set nocompatible
syntax on
"filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" enchanced python syntax
Plugin 'vim-python/python-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'ctrlpvim/ctrlp.vim' 
Plugin 'davidhalter/jedi-vim'
Plugin 'kpron/vim-yaml-helper'
Plugin 'vayw/toggle-bool'

call vundle#end()
filetype plugin indent on

" disable jedi-vim complition
let g:jedi#completions_enabled = 0

let python_highlight_all = 1

" NERDtree shortcut
map <C-n> :NERDTreeToggle<CR>

" yaml helper shortcut
nnoremap <F3> :YamlGoToKey<Space>

set t_Co=256

vmap <C-C> "+yi
imap <C-V> "+gPi

set mousehide
set termencoding=utf-8

set novisualbell

" toogle-bool bind
noremap <leader>t :ToggleBool<CR>

" bind Space to reset last search highlightning
nnoremap <Space> :noh<return>

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
