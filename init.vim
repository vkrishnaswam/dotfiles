set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
if !has('nvim')
    source ~/.vimrc
endif
"set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
"		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
"		  \,sm:block-blinkwait175-blinkoff150-blinkon175

set nu "Line numbers
"set clipboard+=unnamedplus
set autochdir "Change directories
set ic "Ignore case
set switchbuf+=usetab,newtab "From the quickfix list open files in new tabs
set tabline=
set tabstop=8    
set shiftwidth=4 
set softtabstop=4
set expandtab
set textwidth=80 "Don't insert anything beyond 80 characters on a line
set fo+=b "Break lines at 80 characters and go into next line
set wildmode=list:longest "Show the partial matches as a list
"set background=dark "Use Gruvbox with dark background

call plug#begin('~/.local/share/nvim/plugged')
Plug 'roxma/vim-tmux-clipboard'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf',{'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
"Plug 'morhetz/gruvbox'

call plug#end()
