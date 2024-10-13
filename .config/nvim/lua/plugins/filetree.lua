return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  opts = {
    view = {
      width = 500,
    },
    update_focused_file = {
      enable = true,
    },
    actions = {
      open_file = {
        quit_on_open = true,
      }
    },
    -- git = {
    --   enable = false,
    -- },
  },

  keys = {
    { '<leader>e', '<cmd>NvimTreeToggle<cr>' }
  },
}
