require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})

local tree = require("nvim-tree.api").tree
vim.keymap.set("n", "<leader>e", tree.toggle)
