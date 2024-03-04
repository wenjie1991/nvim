-- disable netrw at the very start of your init.lua for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = false
-- 高亮所在行
-- vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
-- vim.wo.colorcolumn = "100"
-- The format setting will be overwritten by .editorconfig
-- 缩进2个空格等于一个Tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索不要高亮
vim.o.hlsearch = true
vim.cmd [[
nmap <silent> <leader>nl :nohlsearch<CR>
"" other things
" set formatoptions=ct
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" autocmd FileType * setlocal formatoptions-=o formatoptions-=r 
set wrap lbr
set nopaste
set pastetoggle=<F2>
]]
-- 边输入边搜索
vim.o.incsearch = true
-- 使用增强状态栏后不再需要 vim 的模式提
vim.o.showmode = false
-- 命令行高为2，提供足够的显示空间
-- vim.o.cmdheight = 2
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 禁止折行
-- vim.o.wrap = true
-- vim.wo.wrap = true
-- 行结尾可以跳到下一行
--vim.o.whichwrap = 'b,s,<,>,[,],h,l'
-- 允许隐藏被修改过的buffer
vim.o.hidden = true
-- 鼠标支持
-- vim.o.mouse = "a"
vim.g.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
-- vim.o.swapfile = false
-- smaller updatetime
vim.o.updatetime = 300
-- 设置 timeoutlen 为等待键盘快捷键连击时间200毫秒，可根据需要设置
-- 遇到问题详见：https://github.com/nshen/learn-neovim-lua/issues/1
vim.o.timeoutlen = 400
-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 样式
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 不可见字符的显示，这里只把空格显示为一个点
-- vim.o.list = true
-- vim.o.listchars = "space:·"
-- 补全增强
vim.o.wildmenu = true
-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.pumheight = 10
-- always show tabline
-- vim.o.showtabline = 2
vim.g.python3_host_prog = "~/.config/nvim/nvim-python/bin/python3"
vim.g.undofile = true
vim.undodir = "~/.vim/undo"
-- show marker
vim.cmd [[
"  asterisk  "
""""""""""""""""""""""""""""""""""""""
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)
let g:asterisk#keeppos = 1
]]
-- disable line number in buildin terminal
vim.cmd[[ 
autocmd TermOpen * setlocal nonumber norelativenumber
]]

-- neovim terminal
vim.cmd[[ 
" Neovim terminal Esc map 
"""""""""""""""""""""""""""""""""""""""""""
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w>h <C-\><C-N><C-w>h
tnoremap <C-w>j <C-\><C-N><C-w>j
tnoremap <C-w>k <C-\><C-N><C-w>k
tnoremap <C-w>l <C-\><C-N><C-w>l
inoremap <C-w>h <C-\><C-N><C-w>h
inoremap <C-w>j <C-\><C-N><C-w>j
inoremap <C-w>k <C-\><C-N><C-w>k
inoremap <C-w>l <C-\><C-N><C-w>l
nnoremap <C-w>h <C-w>h
nnoremap <C-w>j <C-w>j
nnoremap <C-w>k <C-w>k
nnoremap <C-w>l <C-w>l

autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

command! -nargs=* TT split | wincmd w | terminal <args>
command! -nargs=* VT vsplit | wincmd w | terminal <args>

" autocmd TermOpen * setlocal scrollback=10000 | set nonu
]]
-- add yank to system clipboard
vim.cmd[[set clipboard+=unnamedplus]]
-- replace string
vim.cmd[[ 
" Replace name
""""""""""""""""""""""""""""""""""""""""""
" ref https://stackoverflow.com/questions/597687/changing-variable-names-in-vim?answertab=votes#tab-top
" nnoremap gr [{V%:s/<C-R>///gc<left><left><left>
nnoremap gr gdva{:s/<C-R>///gc<left><left><left>
" For global replace
nnoremap gR :%s/<C-R>///gc<left><left><left>

" Replace select string
vnoremap <C-r> ""y:%s/<C-R>=escape(@", '/\')<CR>//g<Left><Left>
" Search select string
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Insert a character
"""""""""""""""""""""""""""""""""""""""""""
:nnoremap ,i i_<Esc>r
:nnoremap ,a a_<Esc>r
]]

-- setup copilot proxy
-- vim.g.copilot_proxy = 'http://proxyp:3128'
-- vim.g.copilot_proxy_strict_ssl = false

vim.api.nvim_create_user_command('ProxyOn', function()
    vim.g.copilot_proxy = 'http://proxyp:3128'
    vim.api.nvim_command('Copilot restart')
    -- vim.g.copilot_proxy_strict_ssl = false
end, 
    {})
vim.api.nvim_create_user_command('ProxyOff', function()
    vim.g.copilot_proxy = ''
    vim.api.nvim_command('Copilot restart')
    -- vim.g.copilot_proxy_strict_ssl = false
end, 
    {})

-- vim slime
vim.cmd[[
let g:slime_target = "neovim"
]]
