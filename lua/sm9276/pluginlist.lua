return{
	{"mbbill/undotree"},
	{"theprimeagen/harpoon"},
	{"williamboman/mason.nvim"},
	{"williamboman/mason-lspconfig.nvim"},
	{"neovim/nvim-lspconfig"},
	{"folke/neodev.nvim",},
	{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',},
    {'nvim-telescope/telescope.nvim',dependencies = { 'nvim-lua/plenary.nvim' } },
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make',},
	{"vhyrro/luarocks.nvim", priority = 1000, config = true,},
	{"tpope/vim-fugitive"},
	{"numToStr/comment.nvim", config = function() require("Comment").setup() end },
	{ "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}, config = function() vim.cmd[[colorscheme tokyonight-night]] end },
	{"hrsh7th/nvim-cmp", dependencies = {'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip', 'rafamadriz/friendly-snippets', 'hrsh7th/cmp-nvim-lsp',  }, },
    {'nvim-lualine/lualine.nvim', dependencies = { "nvim-tree/nvim-web-devicons"}, config = function() require("lualine").setup({ icons_enabled = true, theme = 'onedark', }) end, },

}
