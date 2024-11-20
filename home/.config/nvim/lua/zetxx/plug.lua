-- https://github.com/junegunn/vim-plug
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plug/')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
-- Plug('neovim/nvim-lspconfig')
Plug('ray-x/go.nvim')
--Plug('ray-x/guihua.lua')
Plug('ray-x/starry.nvim')
Plug('mfussenegger/nvim-dap')
Plug('rcarriga/nvim-dap-ui')
Plug('nvim-neotest/nvim-nio')
Plug('theHamsta/nvim-dap-virtual-text')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
Plug('nvim-telescope/telescope-dap.nvim')

--Plug('hrsh7th/cmp-nvim-lsp')
--Plug('hrsh7th/cmp-buffer')
--Plug('hrsh7th/cmp-path')
--Plug('hrsh7th/cmp-cmdline')
--Plug('hrsh7th/nvim-cmp')

Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && npx --yes yarn install' })
Plug('mbbill/undotree')

-- LSP
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')

vim.call('plug#end')
