" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Key mappings
" Ctrl-C -> escape
:ino <C-C> <Esc>

" Indentation and spacing
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" " Line numbers
set number

if filereadable(expand("~/.vim/vimrc.plugins"))
	source ~/.vim/vimrc.plugins
endif

" FZF
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
map <C-p> :Files<CR>

" File behavior
" TODO: Make sure these folders get created when symlinking dotfiles
set backupdir=~/.vim/backups
set undodir=~/.vim/undofiles
set noswapfile
