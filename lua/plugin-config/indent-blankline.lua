-- local status, ident_blankline = pcall(require, "indent_blankline")
-- if not status then
	-- vim.notify("没有找到 indent_blankline")
	-- return
-- end

require "ibl".setup({
    enabled = false,
	exclude = {
        filetypes = {
            "dashboard",
            "packer",
            "terminal",
            "help",
            "log",
            "markdown",
            "TelescopePrompt",
            "lspinfo",
            "toggleterm",
        }
	},
	-- context_patterns = {
		-- "class",
		-- "function",
		-- "method",
		-- "element",
		-- "^if",
		-- "^while",
		-- "^for",
		-- "^object",
		-- "^table",
		-- "block",
		-- "arguments",
	-- }
})
