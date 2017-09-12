"Set leader key
let mapleader = " "

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

" Plug
if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif

" FZF
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
map <C-p> :Files<CR>

" File behavior
let &backupdir = $HOME . "/.nvim/backups"
let &undodir = $HOME . "/.nvim/undofiles"

function! EnsureDirExists(dir)
  if !isdirectory(a:dir)
    if exists("*mkdir")
      call mkdir(a:dir,'p')
      echo "SUCCESS" . a:dir
    else
      echo "WARNING: Unable to create directory" . a:dir
    endif
  endif
endfunction

call EnsureDirExists(&backupdir)
call EnsureDirExists(&undodir)

" Crosshair (CursorColumn)
set nocursorcolumn
set nocursorline

" Misc
set colorcolumn=80
set noswapfile

" NOTE: This should be at the bottom
" Colors
set t_Co=256
set background=dark
colorscheme PaperColor

" Search options
" Highlight search
set hlsearch

" vim-test strategy
let test#strategy = "tslime"
let test#ruby#rspec#executable = 'tmux_unzoom; bin/rspec'

" tslime
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" Vim test bindings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>A :TestSuite<CR>
