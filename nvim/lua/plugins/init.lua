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

require("lazy").setup({

    --colorschemes
    { "ellisonleao/gruvbox.nvim", priority = 1000 },

    --icons
    "nvim-tree/nvim-web-devicons",

    --dashboard
    "goolord/alpha-nvim",

    --autopairs
    "windwp/nvim-autopairs",

    --nui
    "MunifTanjim/nui.nvim",

    --plenary
    "nvim-lua/plenary.nvim",

    --indent
    "lukas-reineke/indent-blankline.nvim",

    --lualine
    "nvim-lualine/lualine.nvim",

    --bufferline
    "akinsho/bufferline.nvim",

    --telescope
    "nvim-telescope/telescope.nvim",

    --neotree
    "nvim-neo-tree/neo-tree.nvim",

    --lsp
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "utilyre/barbecue.nvim",
    "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    "dense-analysis/ale",
    "williamboman/mason.nvim",
})
