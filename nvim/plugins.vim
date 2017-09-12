call plug#begin('~/.config/nvim/plugged')

" vim + tmux
Plug 'jgdavey/tslime.vim'

"fuzzy finding
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"looks
Plug 'itchyny/lightline.vim'

"workflow
Plug 'AndrewRadev/splitjoin.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'mcasper/vim-infer-debugger'
Plug 'pbrisbin/vim-mkdir'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

"Text objects
Plug 'kana/vim-textobj-user', { 'for': 'ruby' }
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }

" Langauge specific
Plug 'ElmCast/elm-vim', { 'for': 'elm' }
Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir,eelixir' }
Plug 'fatih/vim-go', { 'for': 'golang' }
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
Plug 'keith/swift.vim', { 'for': 'swift' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'rodjek/vim-puppet', { 'for': 'puppet' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

"testing
Plug 'janko-m/vim-test'

"colors
Plug 'chriskempson/base16-vim'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'rakr/vim-one'
Plug 'sjl/badwolf'

call plug#end()
