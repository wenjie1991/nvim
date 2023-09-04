-- the servers that should be automatically installed
local lsp_servers = {
    "lua_ls",
    "gopls",
    "pyright",
    "jsonls",
    "html",
    "bashls",
    -- "r_language_server",
    "clangd"
}
-- using plug "mason" to ensure the installation
-- should before the lsp config
require("mason").setup {
    ui = {
        icons = {
            package_installed = "✓"
        }
    }
}
require("mason-lspconfig").setup {
    -- ensure_installed = { "sumneko_lua" },
}

-- 需要特殊配置的lsp server
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local lsp_server_configs = {
    sumneko_lua = require("lsp.lua"), -- /lua/lsp/lua
}

local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local default_on_attach = function(client, bufnr)
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end

    -- 绑定快捷键
    require"keybindings".mapLSP(buf_set_keymap)
    -- vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
end

for _, server in pairs(lsp_servers) do
    local options = lsp_server_configs[server]
    if options == nil then
        lspconfig[server].setup({
            capabilities = capabilities,
            on_attach = default_on_attach,
            flags = {
                debounce_text_changes = 150,
            },
        })
    else
        lspconfig[server].setup(options)
    end
end

local _border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
        -- Use a sharp border with `FloatBorder` highlights
        border = _border
    }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
        -- Use a sharp border with `FloatBorder` highlights
        border = _border
    }
)

vim.diagnostic.config{
  float={border=_border}
}

require('lspconfig.ui.windows').default_options = {
  border = _border
}
