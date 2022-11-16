-- 自动安装 Packer.nvim
-- 插件安装目录
--
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap

if fn.empty(fn.glob(install_path)) > 0 then
    vim.notify("正在安装Pakcer.nvim, 请稍后...")
    paccker_bootstrap = fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim",
                                   install_path})

    local rtp_addition = vim.fn.stdpath("data") .. "site/pack/*/start/*"
    if not string.find(vim.o.runtimepath, rtp_addition) then
        vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
    end
    vim.notify("Packcer.nvim 安装完毕")
end

-- 使用受保护的调用，这样我们就不会在第一次使用时出错
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("没有安装 packer.nvim")
    return
end

packer.startup({function(use)
    -- Packer 可以自己升级
    use("wbthomason/packer.nvim")
    -------------------------- plugins -------------------------------------------
    -- ui样式
    use("sainnhe/everforest")

    --------------------LSP-----------------------------
    use({"williamboman/mason.nvim"})
    use({"williamboman/mason-lspconfig.nvim"})

    -- Lspconfig
    use({"neovim/nvim-lspconfig"})

    -- 补全引擎
    use("hrsh7th/nvim-cmp")

    -- Snippet 引擎
    use("hrsh7th/vim-vsnip")

    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-nvim-lsp-signature-help")
    -------------------------------------------------------------------------------
    -- treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    })
    use("p00f/nvim-ts-rainbow")

    -- telescope
    use({
        "nvim-telescope/telescope.nvim",
        requires = {"nvim-lua/plenary.nvim"}
    })

    -- telescope extensions
    use("LinArcX/telescope-env.nvim")
    use("nvim-telescope/telescope-ui-select.nvim")

    -- nvim-tree
    use({
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons"
    })

    -- bufferline
    use({
        "akinsho/bufferline.nvim",
        requires = {"kyazdani42/nvim-web-devicons", "moll/vim-bbye"}
    })

    -- lualine
    use({
        "nvim-lualine/lualine.nvim",
        requires = {"kyazdani42/nvim-web-devicons"}
    })
    use("arkav/lualine-lsp-progress")

    -- dashboard-nvim
    use("glepnir/dashboard-nvim")

    -- project
    use("ahmedkhalf/project.nvim")

    -- indent-blankline
    use("lukas-reineke/indent-blankline.nvim")

    -- git
    use({"lewis6991/gitsigns.nvim"})

    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")

    -- UI 增强
    use("onsails/lspkind-nvim")
    use("tami5/lspsaga.nvim")

    -- 代码格式化
    use("mhartington/formatter.nvim")
    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = "nvim-lua/plenary.nvim"
    })

    -- TypeScript 增强
    use({
        "jose-elias-alvarez/nvim-lsp-ts-utils",
        requires = "nvim-lua/plenary.nvim"
    })

    -- Lua 增强
    use("folke/lua-dev.nvim")

    -- JSON 增强
    use("b0o/schemastore.nvim")

    -- Rust 增强
    use("simrat39/rust-tools.nvim")

    -- --------------------- colorschemes 颜色--------------------
    -- -- tokyonight
    -- use("folke/tokyonight.nvim")
    -- -- OceanicNext
    -- use("mhartington/oceanic-next")
    -- -- gruvbox
    -- use({
    --     "ellisonleao/gruvbox.nvim",
    --     requires = {"rktjmp/lush.nvim"}
    -- })
    -- -- zephyr
    -- -- use("glepnir/zephyr-nvim")
    -- -- nord
    -- use("shaunsingh/nord.nvim")
    -- -- onedark
    -- use("ful1e5/onedark.nvim")
    -- -- nightfox
    -- use("EdenEast/nightfox.nvim")

end})
