local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("nvim-tree not found")
    return
end

local list_keys = require('keybindings').nvimTreeList
nvim_tree.setup({
    -- not show the menue in new tab
    open_on_tab = false,
    -- 显示 git 状态图标
    git = {
        enable = true,
        ignore = false,
        timeout = 500
    },
    -- project plugin 需要这样设置
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    -- not 隐藏 .文件
    filters = {
        dotfiles = false,
        custom = {  },
        -- custom = { 'node_modules' },
    },
    tab = {
        sync = {
            open = true,
            close = true,
            ignore = {},
        },
    },
    view = {
        -- 宽度
        width = 40,
        -- 也可以 'right'
        side = 'left',
        -- 隐藏根目录
        hide_root_folder = false,
        -- 自定义列表中快捷键
        -- mappings = {
        --    custom_only = false,
        --    list = list_keys,
        -- },
        -- 不显示行数
        number = false,
        relativenumber = false,
        -- 显示图标
        signcolumn = 'yes',
    },
    actions = {
        open_file = {
            -- 首次打开大小适配
            resize_window = true,
            -- 打开文件时关闭
            quit_on_open = false,
        },
    },
})

-- vim.cmd([[
  -- autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
-- ]])
