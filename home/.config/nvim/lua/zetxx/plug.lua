-- https://github.com/junegunn/vim-plug
local vim = vim
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
  vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  vim.o.runtimepath = vim.o.runtimepath
  vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end


local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plug/')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('nvim-treesitter/nvim-treesitter-refactor')
Plug('ray-x/go.nvim')
Plug('ray-x/starry.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
Plug('nvim-telescope/telescope-dap.nvim')
Plug('mbbill/undotree')

-- status line
Plug('nvim-lualine/lualine.nvim')
Plug 'arkav/lualine-lsp-progress'
Plug('nvim-tree/nvim-web-devicons')

-- LSP
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
-- DAP
Plug('mfussenegger/nvim-dap')
Plug('rcarriga/nvim-dap-ui')
Plug('nvim-neotest/nvim-nio')
Plug('theHamsta/nvim-dap-virtual-text')
Plug('jay-babu/mason-nvim-dap.nvim')
Plug('mxsdev/nvim-dap-vscode-js')
Plug('microsoft/vscode-js-debug', { ['do'] = 'npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out'})
-- Themes
Plug('sainnhe/sonokai')
Plug('EdenEast/nightfox.nvim')

-- Other
--- Rust
Plug('mrcjkb/rustaceanvim', {['version'] = '^6'})

vim.call('plug#end')
