--Leaderkey!
vim.g.mapleader = " "
vim.g.maplocalleader = ' '


--Relative Number on sidebar
vim.o.relativenumber = true

vim.o.signcolumn = 'yes'

--tabs
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.updatetime = 300

vim.o.termguicolors = true

vim.o.mouse = 'a'

--Custom Keybinds
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
