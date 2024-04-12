require("nvim-tree").setup({
  view = {
    width = 500,
  },
  update_focused_file = {
    enable = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  git = {
    enable = false,
  }
})

local tree = require("nvim-tree.api").tree
vim.keymap.set("n", "<leader>e", tree.toggle)
