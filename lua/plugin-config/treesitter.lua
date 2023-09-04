require 'nvim-treesitter.configs'.setup {
    -- 安装 language parser
    -- :TSInstallInfo 命令查看支持的语言
    -- List of parsers to ignore installing (for "all")
    ensure_installed = { "cpp", "lua", "python", "bash", "javascript", "css", "html", "vim" },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = true,
    ignore_install = {},

    -- 启用代码高亮功能
    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        disable = { "markdown", "r" },

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },

    -- 启用增量选择
    incremental_selection = {
        enable = true,
        keymaps = {
            -- init_selection = "gin",
            -- node_incremental = "grn",
            -- scope_incremental = "grc",
            -- node_decremental = "grm",
            init_selection = '<CR>',
            node_incremental = '<CR>',
            node_decremental = '<BS>',
            scope_incremental = '<TAB>',
        },
    },
    indent = {
        enable = true,
        disable = { "markdown", "r" }
    },
    textobjects = { enable = true },
}

-- 不使用tree sitter Folding
vim.wo.foldmethod = 'marker'
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- vim.wo.foldlevel = 99
