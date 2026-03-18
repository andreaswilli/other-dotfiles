return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
  opts = {
    adapters = {
      http = {
        copilot = function()
          return require("codecompanion.adapters").extend("copilot", {
            schema = {
              model = {
                default = "claude-opus-4.6",
              },
            },
          })
        end,
      },
    },
    interactions = {
      chat = {
        adapter = "copilot",
      },
      inline = {
        adapter = "copilot",
      },
      cmd = {
        adapter = "copilot",
      },
    },
  },
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

