--Leaderkey!
vim.g.mapleader = " "
vim.g.maplocalleader = ' '


--Relative Number on sidebar
vim.opt.nu = true
vim.o.relativenumber = true

vim.o.signcolumn = 'yes'

--tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.o.updatetime = 300

vim.o.termguicolors = true

vim.o.mouse = 'a'

--Custom Keybinds
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50


