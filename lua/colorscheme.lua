-- Function to determine if running in an SSH session
local function is_ssh_session()
    return os.getenv("SSH_CLIENT") or os.getenv("SSH_TTY") or os.getenv("SSH_CONNECTION")
end

-- Function to determine the operating system
local function get_os()
    local os_name
    if vim.fn.has("mac") == 1 then
        os_name = "macos"
    elseif vim.fn.has("unix") == 1 then
        local uname = vim.fn.system("uname")
        if uname:match("Linux") then
            os_name = "linux"
        end
    end
    return os_name
end

local theme_style = "light"
local os_name = get_os()
if os_name == "linux" and not is_ssh_session() then
    -- Running locally on Linux (Ubuntu)
    theme_style = "dark"
elseif is_ssh_session() or os_name == "macos" then
    -- Running in an SSH session or on macOS
    theme_style = "light"
end

-- begin: vscode theme configuration
local colorscheme = "vscode"
local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Alternatively set style in setup
    style = theme_style,

    -- Enable transparent background
    transparent = false,

    -- Enable italic comment
    italic_comments = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    -- color_overrides = {
        -- vscLineNumber = '#000000',
    -- },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
require('vscode').load()
-- end: vscode theme configuration

-- status color
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not Found")
	return
end

-- local colorscheme = "onedark"
-- vim.o.background = "dark"
-- vim.o.background = "light"
-- local colorscheme = "solarized-high"
-- local colorscheme = "github_light"

