" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
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
let g:airline_theme='Cobalt 2'


"############# 11  Vim 自有配置 ##############

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

" 适配 python 宽度的设定
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set smartindent " 开启新行时使用智能自动缩进
set tabstop=4 " 设定 tab 显示的宽度为 4
set smartindent "智能缩进，智能的选择对齐方式
set cindent "C语言风格缩进"
set autoindent "自动缩进 启用自动对齐功能，把上一行的对齐格式应用到下一行
set expandtab " 将Tab自动展开成为空格
