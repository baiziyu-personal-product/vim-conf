call plug#begin()


Plug 'voldikss/vim-floaterm'
" Make sure you use single quotes
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'runoshun/tscompletejob'
Plug 'prabirshrestha/asyncomplete-tscompletejob.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-flow.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'ryanoasis/vim-devicons'
Plug 'jistr/vim-nerdtree-tabs'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'haishanh/night-owl.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugijjjjjjjjjjjjjjn outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" 状态栏插键
Plug 'vim-airline/vim-airline'

" 状态栏主题插键
Plug 'vim-airline/vim-airline-themes'

" 自动引号括号补全
Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()
"############# 00 插 键 配 置 ##################

" <leader> 按键设置 
let mapleader="," " 设置 leader
let g:mapleader = ","

" vim-airline 状态栏主题配置
let g:airline_theme='simple'
let g:airline#extensions#tabline#formatter = 'default'
"############# 11  Vim 自有配置 ##############
inoremap jj <Esc>
" 分屏窗口移动, Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Go to home and end using capitalized directions
" H和L跳转到行首行末, 实在不想按0和$, 太远
noremap H ^
noremap L $

" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Nerd Tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>

" 快速保存和退出
" Quickly close the current window
nnoremap <leader>q :q<CR>
" Quickly save the current file
nnoremap <leader>w :w<CR>

" 在Visual模式时，按Ctrl+c复制选择的内容
vmap <C-c> "+y

syntax on " 自动语法高亮
set ambiwidth=double " 设置为双字宽显示，否则无法完整显示如:☆
set backspace=2 " 解决 backspace 按键删除的问题 http://cenalulu.github.io/linux/why-my-backspace-not-work-in-vim/
set cursorline " 突出显示当前行
"set cursorcolumn " 突出显示当前列
set clipboard+=unnamed " 共享剪贴板 http://www.vitah.net/posts/9ddf2fa9/
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix "从Win上复制文件时，避免换行符错误
set hlsearch " 搜索时高亮显示被找到的文本
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set incsearch " 输入搜索内容时就显示搜索结果
set ignorecase " 搜索时忽略大小写
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set magic " 设置魔术
set mouse=a     " 启用鼠标
set nocompatible " 关闭 vi 兼容模式，避免以前版本的一些bug和局限
set number " 显示行号
"set paste  " 解决拷贝的时遇到注释会自动注释后续所有行的问题
set ruler " 打开状态栏标尺 在编辑过程中，在右下角显示光标位置的状态行
set showmatch " 显示匹配的括号
set showcmd " 输入的命令显示出来


" night owl
if (has("termguicolors"))
 set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

""""" enable the theme

syntax enable
colorscheme night-owl

" To enable the lightline theme
let g:lightline = { 'colorscheme': 'nightowl' }

let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
