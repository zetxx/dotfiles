local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find in git files' })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input('Grep >') })
end, { desc = 'Telescope project serch' })

require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            ".git",
            ".vscode",
            "dist"
        }
    }
}
