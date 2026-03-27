return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    -- bigfile = { enabled = true },
    -- dashboard = { enabled = true },
    -- explorer = { enabled = true },
    -- indent = { enabled = true },
    -- input = { enabled = true },
    picker = {
      enabled = true,
      win = {
        input = {
          keys = {
            ['<Esc>'] = { 'close', mode = { 'n', 'i' } },
          },
        },
      },
    },
    -- notifier = { enabled = true },
    -- quickfile = { enabled = true },
    -- scope = { enabled = true },
    -- scroll = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
  },
  keys = {
    { '<leader>f', function () Snacks.picker.files() end},
    { '<leader>s', function () Snacks.picker.grep() end},
    { '<leader>S', function () Snacks.picker.grep_word() end, mode = { 'n', 'x' }},
    { '<leader>b', function () Snacks.picker.buffers() end},
    { '<leader>H', function () Snacks.picker.help() end},
    { '<leader>r', function () Snacks.picker.resume() end},
  }
}
