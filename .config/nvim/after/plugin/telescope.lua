require('telescope').setup{
  defaults = {
    file_ignore_patterns = {'.git/'},
  }
}

local ts = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", ts.find_files, {})
vim.keymap.set("n", "<leader>ft", ts.live_grep, {})
vim.keymap.set("n", "<leader>fb", ts.buffers, {})
vim.keymap.set("n", "<leader>fc", ts.git_commits, {})
