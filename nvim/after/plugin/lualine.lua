local custom_pine = require('lualine.themes.rose-pine')
custom_pine.normal.c.bg = 'none'

require('lualine').setup{
    options = {
        icons_enabled = true,
        theme = custom_pine,
    }
}
