require("nvim-tree").setup()

--nvim-treesitter / nvim-treesitter

require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "vim" },
    --ensure_installed = { "c", "vim" },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true, },
}
