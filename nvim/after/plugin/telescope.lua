local builtin = require('telescope.builtin')

require("telescope").setup {
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

-- Load Telescope extensions
require("telescope").load_extension "file_browser"  -- file_browser

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', ":Telescope file_browser<CR>", {})
vim.keymap.set('n', '<leader>kk', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader><leader>', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fo', builtin.vim_options, {})
vim.keymap.set('n', '<leader>fm', builtin.keymaps, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep -> ")})
end)
