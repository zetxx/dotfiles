local theme = require'lualine.themes.wombat'

theme.normal.c.bg = '#112233'

require('lualine').setup {
    options = { theme = theme }
}
