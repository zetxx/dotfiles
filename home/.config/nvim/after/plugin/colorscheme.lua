-- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Colorschemes
-- require('starry').setup()
-- require('starry.functions').change_style("nordfox")
require('nightfox').setup({
    palettes = {
        nordfox = {
            sel0 = "#13171c",
        }
    }
});
vim.cmd("colorscheme nordfox")
