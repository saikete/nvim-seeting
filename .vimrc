set history=200
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

" 光标设置成块状且禁止闪烁
set gcr=a:block-blinkon0
" 显示光标当前位置，右下角可看到当前行和列数
set ruler
" 高亮显示当前行/列
" set cursorline
" set cursorcolumn

" 高亮显示搜索结果
set hlsearch

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让vim把连续数量的空格视为一个制表符
set softtabstop=4

set background=dark
" colorscheme solarized
colorscheme molokai
" colorscheme gruvbox
" 补全括号
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O
inoremap < <><ESC>i

" 禁止备份
set nobackup
" 保留历史记录
set history=500

" 设置编码格式
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8

" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 设置中文提示
language messages zh_CN.utf-8
" 设置双字宽显示，防止有些字符显示不出来
set ambiwidth=double

call plug#begin('~/.vim/plugged')
  " Plug 'kyazdani42/nvim-web-devicons' " for file icons
  " Plug 'kyazdani42/nvim-tree.lua'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Plug 'Lokaltog/vim-powerline'
  Plug 'vim-airline/vim-airline'
  Plug 'tomasr/molokai'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes' 
  Plug 'preservim/nerdtree' 
  Plug 'mhinz/vim-startify'
  Plug 'aca/completion-tabnine', { 'do': './install.sh' } 

call plug#end()