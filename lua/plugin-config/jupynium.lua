require("jupynium").setup({
    auto_start_server = {
        enable = true,
        file_pattern = { "*.ju.r", "*.ju.py" }
    },
    auto_start_sync = {
        enable = true,
        file_pattern = { "*.ju.r", "*.ju.py" }
    },
    auto_attach_to_server = {
        enable = true,
        file_pattern = { "*.ju.r", "*.ju.py" }
    },
})
