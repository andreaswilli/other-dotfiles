local actions = require "telescope.actions"

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
    file_ignore_patterns = { '.git/' },
    path_display = { 'truncate' },
  },
}

local ts = require('telescope.builtin')
vim.keymap.set("n", "<leader>f", function() ts.find_files { hidden = true } end)
vim.keymap.set("n", "<leader>s", ts.live_grep)
vim.keymap.set("n", "<leader>S", ts.grep_string)
vim.keymap.set("n", "<leader>b", ts.buffers)

-- fix invisible text when using github dark theme
vim.api.nvim_set_hl(0, "TelescopePromptCounter", { link = "TelescopeTitle" })
