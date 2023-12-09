-- lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("plugins")

require("basic")

require("keybindings")

require("colorscheme")

require("hop").setup()
require("lualine").setup()
require("plugin-config.bufferline")
require("plugin-config.dashboard")
-- require("plugin-config.indent-blankline")
require("plugin-config.mundo")
require("plugin-config.nvim-tree")
require("plugin-config.transparent")
require("plugin-config.treesitter")
require("plugin-config.vista")
require("plugin-config.vim-r")
-- require("plugin-config.raku")
require("plugin-config.comment")
require("plugin-config.gitsigns")

require("lsp/setup")
require("lsp/nvim-cmp")
require("lsp/null-ls")
require("plugin-config.lsp_signature")
