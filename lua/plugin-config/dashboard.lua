local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    [[ ]],
}

dashboard.section.buttons.val = {
    dashboard.button("r", "  > Recent", ":History<CR>"),
    dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "🔍 > Find file", ":Telescope fd<CR>"),
    dashboard.button("w", "  > Find word", ":Telescope live_grep<CR>"),
    dashboard.button("s", "  > PackerSync", ":Lazy sync<CR>"),
    dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer = {
    [[ ]],
}

alpha.setup(dashboard.opts)
