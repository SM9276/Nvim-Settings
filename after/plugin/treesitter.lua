require('nvim-treesitter.configs').setup {
    ensure_installed = { 'vim', 'vimdoc', 'lua', 'cpp','c','rust','python','json','csv','make'},	
	sync_install = false,
    auto_install = false,
    highlight = { enable = true },
    indent = { enable = true },
}
