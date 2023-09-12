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
    -- 首页
    "goolord/alpha-nvim",
    -- 对齐线
    "lukas-reineke/indent-blankline.nvim",
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
    -- lsp支持
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    -- 模糊匹配工具
    -- "junegunn/fzf",
    -- "junegunn/fzf.vim",
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        dependencies =  {'nvim-lua/plenary.nvim'}
    },
    -- 方便操作
    -- "tpope/vim-commentary",
    -- 'tomtom/tcomment_vim',
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    -- github plugin
    "tpope/vim-fugitive",
    "lewis6991/gitsigns.nvim",

    "tpope/vim-repeat",
    "tpope/vim-surround",
    "tpope/vim-unimpaired",
    'mg979/vim-visual-multi',
    -- 快速跳转
    {
        "phaazon/hop.nvim",
        branch = "v2",
        config = function()
            require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
        end,
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

    -- 格式化代码
    { "jose-elias-alvarez/null-ls.nvim", dependencies = "nvim-lua/plenary.nvim" },
    "rlue/vim-barbaric",
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
    -- {
    --     "jackMort/ChatGPT.nvim",
    --     config = function(,
    --         require("chatgpt",.setup()
    --     end,
    --     requires = {
    --         "MunifTanjim/nui.nvim",
    --         "nvim-lua/plenary.nvim",
    --         "nvim-telescope/telescope.nvim"
    --     }
    -- },
    -- Plugin 管理 buffer 的插件
    {'romgrk/barbar.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},

    -- raku lsp plugin dev
    -- use '~/projects/raku_nvim/raku-lsp-lite.nvim'
    {'wenjie1991/raku-lsp-lite', ft = {'raku', 'perl6', 'rakumod', 'rakutest'}},
})
