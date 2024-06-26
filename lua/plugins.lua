return require("lazy").setup({
    defaults = {
        lazy = true,
        version = nil, -- dont use version="*"
    },
    -- 文件浏览器
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = "nvim-tree/nvim-web-devicons",
    },
    {
        "kelly-lin/ranger.nvim",
        config = function()
            require("ranger-nvim").setup({ replace_netrw = true })
            vim.api.nvim_set_keymap("n", "<leader>ef", "", {
                noremap = true,
                callback = function()
                    require("ranger-nvim").open(true)
                end,
            })
        end,
    },
    -- 主题
    "ful1e5/onedark.nvim",
    "rmehri01/onenord.nvim",
    "xiyaowong/nvim-transparent",
    'lifepillar/vim-solarized8',
    'ishan9299/nvim-solarized-lua',
    'shaunsingh/solarized.nvim',
    'morhetz/gruvbox',
    'luisiacc/gruvbox-baby',
    'sainnhe/gruvbox-material',
    { 'projekt0n/github-nvim-theme' },
    'Mofiqul/vscode.nvim',
    -- check the color used in the buffer
    'norcalli/nvim-colorizer.lua',
    -- 首页
    "goolord/alpha-nvim",
    -- 对齐线
    -- { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    -- tab bar
    { "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
    -- 状态栏
    "nvim-lualine/lualine.nvim",
    -- 编辑历史
    -- "simnalamburt/vim-mundo",
    -- 语法高亮，折叠代码，缩进处理
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    -- 高亮 TODO
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    -- lsp支持
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    -- 模糊匹配工具
    -- "junegunn/fzf",
    -- "junegunn/fzf.vim",
    {
        'nvim-telescope/telescope.nvim',
        dependencies =  {'nvim-lua/plenary.nvim'}
    },
    -- github plugin
    "tpope/vim-fugitive",
    "lewis6991/gitsigns.nvim",

    -- Shortcut for editing
    "tpope/vim-repeat",
    "tpope/vim-surround",
    "tpope/vim-unimpaired",
    'mg979/vim-visual-multi',
    -- 快速跳转
    {
        "smoka7/hop.nvim"
        -- config = function()
            -- require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
        -- end,
    },
    -- 函数列表
    "liuchengxu/vista.vim",
    -- 代码补全
    { "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-omni",
            "jalvesaq/cmp-nvim-r"
        }
    },
    -- lsp美化
    "onsails/lspkind-nvim",
    -- 代码片段
    {
        "SirVer/ultisnips"
        -- requires = { { "honza/vim-snippets", rtp = "." } },
    },
    'honza/vim-snippets',
    "quangnguyen30192/cmp-nvim-ultisnips",
    {
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup({
                mapping = { "jk", "jj", "kj", "kk", "hh" },
            })
        end
    },
    -- Github copilot
    "github/copilot.vim",
    -- auto pair
    -- { 'windwp/nvim-autopairs', event = "InsertEnter", opts = {} },
    -- 格式化代码
    { "jose-elias-alvarez/null-ls.nvim", dependencies = "nvim-lua/plenary.nvim" },
    "rlue/vim-barbaric",
    {'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async'},
    -- vim python
    "jalvesaq/vimcmdline",
    -- vim R
    "jalvesaq/Nvim-R",
    -- {'jalvesaq/Nvim-R', branch = "stable"},
    'jalvesaq/R-Vim-runtime',
    -- Markdown
    -- 'vim-pandoc/vim-pandoc',
    -- 'vim-pandoc/vim-pandoc-syntax',
    -- 'mzlogin/vim-markdown-toc',
    --  Show current search term in different color
    'PeterRincker/vim-searchlight',
    -- Show match number for incsearch
    'osyo-manga/vim-anzu',
    -- Stay after pressing * and search selected text
    'haya14busa/vim-asterisk',
    -- show markers
    -- 'jacquesbh/vim-showmarks',
    'kshenoy/vim-signature',
    -- align code
    'godlygeek/tabular',
    -- Enable the function signature hint
    'ray-x/lsp_signature.nvim',
    'vim-voom/VOoM',
   -- Plugin 管理 buffer 的插件
    {'romgrk/barbar.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},

    -- Plugin 用于python IDE
    {
        "kiyoon/jupynium.nvim",
        build = "pip3 install --user . --upgrade pip --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org",
        -- build = "conda run --no-capture-output -n jupynium pip install .",
        -- enabled = vim.fn.isdirectory(vim.fn.expand "~/miniconda3/envs/jupynium"),
    },
    "rcarriga/nvim-notify",   -- optional
    "stevearc/dressing.nvim", -- optional, UI for :JupyniumKernelSelect

    -- raku lsp plugin dev
    -- use '~/projects/raku_nvim/raku-lsp-lite.nvim'
    {'wenjie1991/raku-lsp-lite', ft = {'raku', 'perl6', 'rakumod', 'rakutest'}},
    {
        'mrcjkb/rustaceanvim',
        version = '^4', -- Recommended
        ft = { 'rust' },
    },
})
