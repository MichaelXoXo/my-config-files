set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" ################ pp start ################

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim' "https://github.com/rking/ag.vim
Plugin 'vim-airline/vim-airline' "https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline-themes' "  https://github.com/vim-airline/vim-airline-themes https://github.com/vim-airline/vim-airline/wiki/Screenshots
Plugin 'klen/python-mode' " https://vimawesome.com/plugin/python-mode
Plugin 'Yggdroot/indentLine' " https://github.com/Yggdroot/indentLine
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim' " https://draculatheme.com/vim/
Plugin 'majutsushi/tagbar' " https://github.com/majutsushi/tagbar


" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"############# 00 插 键 配 置 ##################

" <leader> 按键设置 
let mapleader="," " 设置 leader
let g:mapleader = ","


" Plugin vim-airline
" https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_powerline_fonts = 1 " 这个是安装字体后 必须设置此项 
let g:airline_theme='deus'
let g:Powerline_symbols='fancy'
let Powerline_symbols='fancy'
set t_Co=256 " 状态栏就有颜色了


" Plugin python-mode
" https://github.com/python-mode/python-mode/blob/develop/doc/pymode.txt
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_completion_bind = '<C-p>'  "为了自动补全有效，需要将 set paste 设置不启用
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_python = 'python3' " 默认检查 Python2
"Autofix PEP8 errors
nnoremap <leader>f :PymodeLintAuto<CR>
let g:pymode_rope_lookup_project=0


" Plugin indentLine settings.
"let g:indentLine_char='|'
let g:indentLine_enabled = 1
let g:indentLine_color_term = 239
"let g:indentLine_char = 'c'
highlight PmenuSel cterm=underline,bold ctermfg=blue
"设置光标样式为竖线vertical bar
"" Change cursor shape between insert and normal mode in iTerm2.app
"if $TERM_PROGRAM =~ "iTerm"
"  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
"endif


" Plugin ctrlp
" http://www.zlovezl.cn/articles/vim-plugins-cannot-live-without/
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$' 


" Plugin 'scrooloose/nerdtree'
"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25


" Plugin dracula
colorscheme dracula


" Plugin majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1 " 启动时自动focus 到 tarbar


" Plugin ag


" For Tmux
"如果喜欢给窗口自定义命名，那么需要关闭窗口的自动命名
"set-option -g allow-rename off " don't rename windows automatically http://taozj.net/201711/tmux-config.html


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
