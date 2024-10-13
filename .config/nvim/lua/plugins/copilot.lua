return {
  {
    'zbirenbaum/copilot.lua',
    event = "InsertEnter",

    opts = {
      suggestions = { enabled = true },
      panel = { enabled = true },
    },
  },

  {
    'zbirenbaum/copilot-cmp',

    opts = {},
  },
}
