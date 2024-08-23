return{
	{"mbbill/undotree"},
	{"theprimeagen/harpoon"},
	{"williamboman/mason.nvim"},
	{"williamboman/mason-lspconfig.nvim"},
	{"folke/neodev.nvim",},
	{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',},
    {'nvim-telescope/telescope.nvim',dependencies = { 'nvim-lua/plenary.nvim' } },
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make',},
	{"vhyrro/luarocks.nvim", priority = 1000, config = true,},
	{"tpope/vim-fugitive"},
	{"numToStr/comment.nvim",
		config = function()
			require("Comment").setup()
		end },

	{ "folke/tokyonight.nvim",
  		lazy = false,
  		priority = 1000,
  		opts = {},
		config = function()
			vim.cmd[[colorscheme tokyonight-night]]
		end },
	{"hrsh7th/nvim-cmp",
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            'hrsh7th/cmp-nvim-lsp',  }, },
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
	  { 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x', lazy = true, config = false,},
  	  { 'williamboman/mason.nvim', lazy = false, config = true, },

  -- Autocompletion
  { 'hrsh7th/nvim-cmp', event = 'InsertEnter', dependencies = { {'L3MON4D3/LuaSnip'}, },
    config = function()
      local cmp = require('cmp')

      cmp.setup({
        sources = {
          {name = 'nvim_lsp'},
        },
        mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp.SelectBehavior.Select),
  		['<C-n>'] = cmp.mapping.select_next_item(cmp.SelectBehavior.Select),
  		['<C-y>'] = cmp.mapping.confirm({ select = true }),
  		["<C-Space>"] = cmp.mapping.complete(),
		}),
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end,
        },
      })
    end
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    cmd = {'LspInfo', 'LspInstall', 'LspStart'},
    event = {'BufReadPre', 'BufNewFile'},
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
    },
    config = function()
      local lsp_zero = require('lsp-zero')

      -- lsp_attach is where you enable features that only work
      -- if there is a language server active in the file
      local lsp_attach = function(client, bufnr)
        local opts = {buffer = bufnr}

        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', '<leader>vrn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
      end

      lsp_zero.extend_lspconfig({
        sign_text = true,
        lsp_attach = lsp_attach,
        capabilities = require('cmp_nvim_lsp').default_capabilities()
      })

      require('mason-lspconfig').setup({
        ensure_installed = {"lua_ls"},
        handlers = {
          -- this first function is the "default handler"
          -- it applies to every language server without a "custom handler"
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
        }
      })
    end
  }
}
}
