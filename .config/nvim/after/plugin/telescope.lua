require('telescope').setup{
  defaults = {
    file_ignore_patterns = {'.git/'},
  }
}

local map = vim.api.nvim_set_keymap
map("n", "<leader>ff", ":Telescope find_files<cr>", {})
map("n", "<leader>ft", ":Telescope live_grep<cr>", {})
map("n", "<leader>fb", ":Telescope buffers<cr>", {})
map("n", "<leader>fc", ":Telescope git_commits<cr>", {})
