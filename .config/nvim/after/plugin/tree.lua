require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
  },
})

local tree = require("nvim-tree.api").tree
vim.keymap.set("n", "<leader>e", tree.toggle)
