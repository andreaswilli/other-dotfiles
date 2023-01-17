require('telescope').setup{
  defaults = {
    file_ignore_patterns = {'.git/'},
    path_display = {'truncate'}
  },
}

local ts = require('telescope.builtin')
vim.keymap.set("n", "<leader>f", ts.find_files)
vim.keymap.set("n", "<leader>s", ts.live_grep)
vim.keymap.set("n", "<leader>b", ts.buffers)
