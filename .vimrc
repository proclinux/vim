syn on "语法支持
set laststatus=2 "始终显示状态栏
set tabstop=4 "一个制表符的长度
set softtabstop=4 "一个制表符的长度（可以大于tabstop）
set shiftwidth=4 "一个缩进的长度
set expandtab "使用空格替代制表符
set smarttab "智能制表符
set autoindent "自动缩进
set smartindent "智能缩进
set number "显示行号
set ruler "显示位置指示器
set backupdir=/tmp "设置备份文件目录
set directory=/tmp "设置临时文件目录
set ignorecase "检索时忽略大小写
set hls "检索时高亮显示匹配项
set helplang=cn "帮助系统设置为中文
set foldmethod=syntax "代码折叠
colorscheme morning 

"pathogen{
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
Helptags
"}

let mapleader=","

"c-support{
filetype plugin on
let  g:C_UseTool_cmake = 'yes'
let  g:C_UseTool_doxygen = 'yes' 
"}

"nertree{
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"autocmd vimenter * NERDTree  "auto open NERDTree
nnoremap <leader>nt  :NERDTree<CR>
nnoremap <leader>nf  :NERDTreeToggle<CR>
let NERDChristmasTree=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=0
"}


"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}

"taglist{
let Tlist_File_Fold_Auto_Close = 1 "当前不被编辑的方法列表自动折叠
let Tlist_Show_One_File = 1 "只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1 "如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1 "打开taglist时，光标保留在taglist窗口
let Tlist_Ctags_Cmd='/usr/local/opt/ctags/bin/ctags' "设置ctags命令的位置
nnoremap <leader>tl : Tlist<CR> "设置关闭和打开taglist窗口的快捷键
"}

"clang-complete{
let g:clang_auto_select=1
let g:clang_complete_copen=1
let g:clang_periodic_quickfix=1
let g:clang_snippets=1
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_snippets=1
let g:clang_snippets_engine='clang_complete'
let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'
let g:clang_complete_macros=1
"}
