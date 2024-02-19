-- vim.g.mapleader = " " 
-- vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
-- Visual模式 复制到系统剪贴板
map("v", "<C-y>", '"+y', opt)
-- Insert right
map("i", "<C-f>", "<Right>", opt)
-- windows 分屏快捷键
map("n", "<leader>ss", ":vsp<CR>", opt)
-- 关闭当前
map("n", "<leader>x", "<C-w>c", opt)
-- 新 tab 打开当前页面
map("n", "<leader>t", "<C-w>T", opt)
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)
-- 切换tab
map("n", "<leader>1", "1gt<ct>", opt)
map("n", "<leader>2", "2gt<ct>", opt)
map("n", "<leader>3", "3gt<ct>", opt)
map("n", "<leader>4", "4gt<ct>", opt)
map("n", "<leader>5", "5gt<ct>", opt)
map("n", "<leader>6", "6gt<ct>", opt)
map("n", "<leader>7", "7gt<ct>", opt)
map("n", "<leader>8", "8gt<ct>", opt)
map("n", "<leader>9", "9gt<ct>", opt)
map("n", "<leader>0", "tablast<ct>", opt)

-- vista.vim
map("n", "<leader>\\", ":Vista!!<CR>", { noremap = true })

-- mundo
-- map("n", "<leader>u", ":MundoToggle<CR>", opt)

-- fzf.vim
-- map("n", ",f", ":Files<CR>", opt)
-- map("n", ",q", ":Lines<CR>", opt)
-- map("n", ",w", ":Rg<CR>", opt)
-- map("n", ",b", ":Buffers<CR>", opt)

local pluginKeys = {}

map("n", "<F4>", ":NvimTreeToggle<CR>", opt)

-- " Switch to specific tab numbers with Command-number
-- vim.cmd([[
-- noremap <M-1> :tabn 1<CR>
-- noremap <M-2> :tabn 2<CR>
-- noremap <M-3> :tabn 3<CR>
-- noremap <M-4> :tabn 4<CR>
-- noremap <M-5> :tabn 5<CR>
-- noremap <M-6> :tabn 6<CR>
-- noremap <M-7> :tabn 7<CR>
-- noremap <M-8> :tabn 8<CR>
-- noremap <M-9> :tabn 9<CR>
-- " Command-0 goes to the last tab
-- noremap <M-0> :tablast<CR>
--
-- imap <M-1> <Esc>:tabn 1<CR>i
-- imap <M-2> <Esc>:tabn 2<CR>i
-- imap <M-3> <Esc>:tabn 3<CR>i
-- imap <M-4> <Esc>:tabn 4<CR>i
-- imap <M-5> <Esc>:tabn 5<CR>i
-- imap <M-6> <Esc>:tabn 6<CR>i
-- imap <M-7> <Esc>:tabn 7<CR>i
-- imap <M-8> <Esc>:tabn 8<CR>i
-- imap <M-9> <Esc>:tabn 9<CR>i
-- " Command-0 goes to the last tab
-- imap <M-0> <Esc>:tablast<CR>i
-- ]])

-- Switch buffer
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<M-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<M-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<M-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<M->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<M-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<M-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<M-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<M-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<M-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<M-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<M-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<M-8>', '<Cmd>BufferLast<CR>', opts)
map('n', '<M-9>', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
map('n', '<M-0>', '<Cmd>BufferClose<CR>', opts)
-- Pin/unpin buffer
-- map('n', '<M-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
-- map('n', '<M-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
-- map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
-- map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
-- map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
-- map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
-- map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- comment
vim.cmd([[
"nmap <silent> <F3> <c-_><c-_>
"vmap <silent> <F3> <c-_><c-_>
"imap <silent> <F3> <c-_><c-_>
nmap <silent> <F3> gcc
vmap <silent> <F3> gcc
imap <silent> <F3> gcc
"au BufNewFile,BufReadPost *.Rmd,*.R,*r nmap <silent> <F3> \xx
"au BufNewFile,BufReadPost *.Rmd,*.R,*r vmap <silent> <F3> \xx
"au BufNewFile,BufReadPost *.Rmd,*.R,*r imap <silent> <F3> \xx
]])

-- bufferline
vim.cmd([[
map gn :BufferLineCycleNext<CR>
map gp :BufferLineCyclePrev<CR>
map gd :BufferLinePickClose<CR>
]])

-- Copilot
vim.cmd([[ 
    imap <silent><script><expr> <C-K> copilot#Accept("\<CR>")
    let g:copilot_no_tab_map = v:true
]])

-- hop.nvim
map("n", "<leader>w", ":HopWord<CR>", opt)
map("n", "<leader>l", ":HopLine<CR>", opt)
map("x", "<leader>w", ":HopWord<CR>", opt)
map("x", "<leader>l", ":HopLine<CR>", opt)
local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "<leader>l", function()
    hop.hint_lines()
end, { remap = true })
vim.keymap.set("", "<leader>w", function()
    hop.hint_words()
end, { remap = true })
vim.keymap.set("", "f", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "F", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "t", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set("", "T", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", function() builtin.find_files({hidden=true}) end, {})
vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>sb", builtin.buffers, {})
vim.keymap.set("n", "<leader>sh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>sr", builtin.resume, {})

-- pluginKeys.nvimTreeList = {
-- 打开文件或文件夹
-- { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "tabnew" },
-- { key = "e", action = "edit" },
-- 分屏打开文件
-- { key = "s", action = "vsplit" },
-- 显示隐藏文件
-- { key = "i", action = "toggle_ignored" }, -- Ignore (node_modules)
-- { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
-- 文件操作
-- { key = "a", action = "create" },
-- { key = "d", action = "remove" },
-- { key = "r", action = "rename" },
-- { key = "x", action = "cut" },
-- { key = "c", action = "copy" },
-- { key = "p", action = "paste" },
-- { key = "o", action = "system_open" },
-- }

pluginKeys.mapLSP = function(mapbuf)
	-- change name
	mapbuf("n", "rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
	-- code action
	mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
	-- go xx
	mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
	mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
	mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
	mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
	mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
	-- diagnostic
	mapbuf("n", "go", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
	mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
	mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
	-- format
	mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true })
end

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end

pluginKeys.cmp = function(cmp)
	-- local t = function(str)
		-- return vim.api.nvim_replace_termcodes(str, true, true, true)
	-- end
	return {
        ['<Tab>'] = cmp.mapping({
            i = function(fallback)
                if not cmp.select_next_item() then
                    if vim.bo.buftype ~= 'prompt' and has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end
            end,
        }),
        ['<S-Tab>'] = cmp.mapping({
            i = function(fallback)
                if not cmp.select_prev_item() then
                    if vim.bo.buftype ~= 'prompt' and has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end
            end,
        }),
		-- ['<C-Space>'] = cmp.mapping({
            -- i = function()
                -- cmp.complete()
            -- end,
        -- }),
		["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), { "i", "c" }),
		["<Down>"] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), { "i", "c" }),
		["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), { "i", "c" }),
		["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), { "i", "c" }),
		["<C-e>"] = cmp.mapping({ i = cmp.mapping.close(), c = cmp.mapping.close() }),
		["<C-o>"] = cmp.mapping({i = cmp.mapping.complete(), c = cmp.mapping.complete()}),
		["<CR>"] = cmp.mapping({
			i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
			-- i = cmp.mapping.confirm(),
			c = function(fallback)
				if cmp.visible() then
					cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
					-- cmp.confirm()
				else
					fallback()
				end
			end,
		}),
	}
end

return pluginKeys
