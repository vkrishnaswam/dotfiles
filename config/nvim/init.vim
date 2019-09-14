set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
if !has('nvim')
    source ~/.vimrc
endif
set number relativenumber "show absolute as well as relative line numbers
"set autochdir "Change directories
set ic "Ignore case
set switchbuf+=usetab,newtab "From the quickfix list open files in new tabs
set tabline=
set tabstop=4
set shiftwidth=4 
set softtabstop=4
set expandtab
set textwidth=80 "Don't insert anything beyond 80 characters on a line
set fo+=b "Break lines at 80 characters and go into next line
set wildmode=list:longest,full "Show the partial matches as a list
set guicursor= "This line is required to prevent xterm from putting strange characters 
               "when we get into insert mode
"set background=dark "Use Gruvbox with dark background
set undofile "Save file change history in an undo file, so we can walk it back later
set clipboard+=unnamedplus
set encoding=utf-8
autocmd BufNewFile,BufRead *.config set filetype=yaml
autocmd BufNewFile,BufRead *.vlib,*.sva,*.vh,*.svp set filetype=verilog
autocmd BufNewFile,BufRead Makeppfile set filetype=make
autocmd BufNewFile,BufRead *.vx,*.spec set filetype=viva

autocmd filetype systemverilog,yaml,viva,python,perl RainbowParentheses

" ************************** NERDTree Customizations ************************ "
let NERDTreeQuitOnOpen = 1  "Close NERDTree after a file is open
"Make NERDTree pretty
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeChDir=2
let NERDTreeShowHidden=1

" *************************** Custom Mappings ******************************** "
"Map <leader>ev to open init.vim
map <leader>ev :vsplit $MYVIMRC<cr>
"Map <leader>sv to source init.vim
map <leader>sv :source $MYVIMRC<cr>
"Map <leader>b to open Buffers with fzf
map <leader>b :Buffers<cr>
"Easy way to open NERDTree
nnoremap <Leader>f :NERDTreeToggle<Enter>  
nnoremap <Leader>F :NERDTree %<Enter>  
"Make moving between tabs same as moving between buffers
map gt :bn<cr>
map gT :bp<cr>
"Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)<Paste>
"Map sayonara to something easy
nnoremap <leader>q :Sayonara<cr>
nnoremap <leader>Q :Sayonara!<cr>
"Find pwd easy with %/ on the command line
cmap %/ <C-R>=expand("%:p:h")."/"<CR>
cmap %. <C-R>=expand("%:p")<CR>


"Always paste into a new line
nmap p :pu<CR>

"function to call p4edit on current file
function P4e()
    !p4 edit %
endfunction
"map it to a leader command to call it quickly
map <leader>pe :call P4e()<CR>

"Display differents tabs on vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Remember cursor position between vim sessions
autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal! g'\"" |
      \ endif

" Rainbow parentheses settings
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{','}']]
let g:rainbow#blacklist = [232, 233, 234, 235, 236, 248, 242]

" Adding a couple of mappings for :Grepper
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

"Set shell ZSH
""set shell=/home/utils/zsh-5.3.1/bin/zsh

call plug#begin('~/.local/share/nvim/plugged')
Plug 'roxma/vim-tmux-clipboard'
Plug 'vim-airline/vim-airline' 
Plug 'easymotion/vim-easymotion'
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'https://github.com/maxbrunsfeld/vim-yankstack.git'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-sayonara'
Plug 'tpope/vim-surround'
Plug 'haya14busa/incsearch.vim'
Plug 'yous/vim-open-color'
""Plug 'tpope/vim-obsession' ""Couldn't get this work
Plug 'itchyny/vim-cursorword'
""Plug 'justinmk/vim-sneak'
""Plug 'junegunn/seoul256.vim'

call plug#end()
