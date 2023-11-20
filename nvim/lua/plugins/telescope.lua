local builtin = require('telescope.builtin')

return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-media-files.nvim",
    "nvim-telescope/telescope-github.nvim",
    "nvim-telescope/telescope-symbols.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    "crispgm/telescope-heading.nvim",
    "fannheyward/telescope-coc.nvim",
  },
  keys = {
    { '<Leader>ff', builtin.find_files, {} },
    { '<Leader>fg', builtin.live_grep, {} },
    { '<Leader><Leader>', builtin.buffers, {} },
    { '<Leader>fb', ':Telescope file_browser<CR>', {} },
  },
  opts = {
    pickers = {
        find_files = {
            -- theme = "dropdown",
            hidden = true,
        },
    },
    extensions = {
      file_browser = {
        theme = "ivy",
        -- disables netrw and use telescope-file-browser in its place
        hijack_netrw = true,
        mappings = {
          ["i"] = {
            -- your custom insert mode mappings
          },
          ["n"] = {
            -- your custom normal mode mappings
          },
        },
      },
    },
  }
}

-- -- Load Telescope extensions
-- require("telescope").load_extension "file_browser"  -- file_browser
