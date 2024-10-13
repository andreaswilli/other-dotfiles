return {
  'lewis6991/gitsigns.nvim',
  lazy = false,

  opts = {},

  keys = {
    { '<leader>gh', '<cmd>Gitsigns preview_hunk<cr>' },
    { '<leader>gn', '<cmd>Gitsigns next_hunk<cr>' },
    { '<leader>gp', '<cmd>Gitsigns prev_hunk<cr>' },
    { '<leader>gr', '<cmd>Gitsigns reset_hunk<cr>' },
    { '<leader>gl', '<cmd>Gitsigns toggle_current_line_blame<cr>' },
  },
}
