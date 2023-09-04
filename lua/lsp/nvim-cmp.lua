local lspkind = require('lspkind')
local cmp = require('cmp')
local ultisnips = require('lsp.ultisnips')
ultisnips.setup()
cmp.setup {
    completion = {
      autocomplete = false
    },
    -- 指定 snippet 引擎
    snippet = {
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body)
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    -- 来源
    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' },
            { name = 'ultisnips' },
            { name = 'buffer' },
            { name = 'path' },
            { name = 'cmp_nvim_r' }
        }),
    -- 快捷键
    mapping = require'keybindings'.cmp(cmp),
    -- 使用lspkind-nvim显示类型图标
    formatting = {
        format = lspkind.cmp_format({
            with_text = true, -- do not show text alongside icons
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            before = function (entry, vim_item)
                -- Source 显示提示来源
                vim_item.menu = "["..string.upper(entry.source.name).."]"
                return vim_item
            end
        })
    },
}

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    completion = {
        autocomplete = false
    },
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    completion = {
        autocomplete = false
    },
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    completion = {
        autocomplete = false
    },
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

-- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
    -- capabilities = capabilities
-- }
