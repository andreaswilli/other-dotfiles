require('telescope').setup{
  defaults = {
    file_ignore_patterns = {'.git/'},
    path_display = {'truncate'},
  },
}

local ts = require('telescope.builtin')
vim.keymap.set("n", "<leader>f", function() ts.find_files{hidden=true} end)
vim.keymap.set("n", "<leader>s", ts.live_grep)
vim.keymap.set("n", "<leader>b", ts.buffers)
