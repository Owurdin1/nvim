--[[ bootstrap.lua ]]

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

    use {
        'VonHeikemen/lsp-zero.nvim',
        --branch = 'v2.x',
        requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},             -- Required
                {'williamboman/mason.nvim'},           -- Optional
                {'williamboman/mason-lspconfig.nvim'}, -- Optional

                -- Autocompletion
                {'hrsh7th/nvim-cmp'},     -- Required
                {'hrsh7th/cmp-nvim-lsp'}, -- Required
                {'L3MON4D3/LuaSnip'},     -- Required
            }
        }

    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'mhinz/vim-startify'
    use 'danilamihailov/beacon.nvim'
    use 'stevearc/aerial.nvim'
    use 'numToStr/Comment.nvim'
    use 'rafamadriz/neon'
    use 'marko-cerovac/material.nvim'
    use 'vimwiki/vimwiki'
    use 'neanias/everforest-nvim'

    -- use 's1n7ax/nvim-comment-frame'

    -- use {
    --     's1n7ax/nvim-comment-frame',
    --     requires = {
    --         { 'nvim-treesitter' }
    --         },
    --         config = function()
    --             require('nvim-comment-frame').setup()
    --         end
    --     }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
        }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end

end)


