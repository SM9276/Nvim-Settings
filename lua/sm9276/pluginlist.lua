return{
	{
		"numToStr/comment.nvim",
		config = function()
			require("Comment").setup()
		end
	},
	
	{
  		"folke/tokyonight.nvim",
  		lazy = false,
  		priority = 1000,
  		opts = {},
		config = function()
			vim.cmd[[colorscheme tokyonight-night]]
		end
	},
	
	{
		 "williamboman/mason.nvim",
    	 "williamboman/mason-lspconfig.nvim",
    	 "neovim/nvim-lspconfig",
		 "folke/neodev.nvim",
	},
	
	{
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            
            'hrsh7th/cmp-nvim-lsp',
            
        },
    },

	{
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },


    { 
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' } 
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },


    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enabled = true,
                theme = 'onedark',
            })
        end,
    },

	{
  		"vhyrro/luarocks.nvim",
  		priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
  		config = true,
	},
}
