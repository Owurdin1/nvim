require("nvim-tree").setup()

require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "llvm", "lua", "vim" },
    sync_install = false,
    auto_install = true,
    highlight = {   enable = true,
                    disable = { "vimdoc" },
                },

}
