local theme = require 'lualine.themes.wombat'

theme.normal.c.bg = '#112233'

require('lualine').setup {
    options = {
        theme = theme,
        section_separators = '',
        component_separators = '',
    },
    sections = {
        lualine_c = {
            {
                'filename',
                file_status = true,
                path = 1
            },
            'lsp_progress'
        },
        lualine_x = {'encoding'},
    },
}
