return {
  "olimorris/codecompanion.nvim",
  version = "^18.0.0",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    { "<leader>öö", "<cmd>CodeCompanionChat Toggle<cr>", mode = "n" },
    { "<leader>öö", "<cmd>CodeCompanionChat Add<cr>",    mode = "v" },
    { "<leader>öi", "<cmd>CodeCompanion<cr>",            mode = "v" },
    { "<leader>öc", ":CodeCompanionCmd ",                mode = "n" },
  },
}
