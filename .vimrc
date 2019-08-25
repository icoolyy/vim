"插件管理
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'w0ng/vim-hybrid'
Plug 'easymotion/vim-easymotion'
call plug#end()

" @airline
set laststatus=2 "永远显示状态栏
set t_Co=256 "在windows中用xshell连接打开vim可以显示色彩
let g:airline_theme='bubblegum' "选择主题
let g:airline_powerline_fonts = 1 "这个是安装字体后 必须设置此项
let g:airline#extensions#tabline#enabled=1 "Smarter tab line: 显示窗口tab和buffer
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'

" 设置行号
set number
" 设置高亮
syntax on
" 设置配色
colorscheme hybrid
" 设置粘贴映射
set pastetoggle=<F2>
" 高亮搜搜
set hlsearch
set incsearch
" 设置折叠方式
set foldmethod=indent

" ss 搜索映射
nmap ss <Plug>(easymotion-s2)

" 一些方便得映射
let mapleader=','
let g:mapleader=','

" jj 进入normal模式
inoremap jj <Esc>`^
" 使用leader+w直接保存
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

" 切换buffer
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> [n :bnext<cr>

" insert模式下删除一行
inoremap <c-d> <Esc>ddi
" use ctrl+h/j/k/l switch window
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" sudo to write
cnoremap w!! w !sudo tee % >/dev/null
