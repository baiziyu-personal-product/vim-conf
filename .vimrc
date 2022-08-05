
inoremap jj <Esc>
set number
set set autoindent
set cindent
set tabstop=4
set hlsearch
let mapleader = ","  
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>n :NERDTreeToggle<CR>

nnoremap <leader>w <C-w>w
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <leader>p <C-w>p
nnoremap <leader>c <C-w>c
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
let g:interestingWordsRandomiseColors = 1

call plug#begin()
Plug 'sickill/vim-monokai'              
Plug 'vim-airline/vim-airline'         
Plug 'vim-airline/vim-airline-themes'
Plug 'plasticboy/vim-markdown'          
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'elzr/vim-json'
Plug 'apzelos/blamer.nvim'
Plug 'junegunn/gv.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/seoul256.vim'
Plug 'powerline/powerline-fonts'
Plug 'sheerun/vim-polyglot'
Plug 'pprovost/vim-ps1'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'isruslan/vim-es6'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'mhinz/vim-startify' 
Plug 'tpope/vim-fugitive' 
Plug 'lfv89/vim-interestingwords'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
call plug#end()

