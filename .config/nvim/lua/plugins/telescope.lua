return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },

    opts = function()
      local actions = require('telescope.actions')

      return {
        defaults = {
          mappings = {
            i = {
              ['<esc>'] = actions.close,
            },
          },
          file_ignore_patterns = { '.git/', '.git\\', 'node_modules' },
          path_display = { 'truncate' },
          layout_config = {
            prompt_position = 'top',
          },
          sorting_strategy = 'ascending',
        },
        pickers = {
          buffers = {
            sort_lastused = true,
            mappings = {
              i = {
                ['<c-x>'] = 'delete_buffer',
              },
            },
          },
        },
        extensions = {
          ['ui-select'] = {
            require("telescope.themes").get_cursor {}
          },
          fzf = {},
        },
      }
    end,

    config = function(_, opts)
      require('telescope').setup(opts)
      require('telescope').load_extension('ui-select')
      require('telescope').load_extension('fzf')
      require('config.telescope.multigrep').setup()
    end,

    keys = {
      { '<leader>f', '<cmd>Telescope find_files hidden=true<cr>' },
      -- { '<leader>s', '<cmd>Telescope live_grep<cr>' }, -- replaced by multigrep
      { '<leader>S', '<cmd>Telescope grep_string<cr>' },
      { '<leader>b', '<cmd>Telescope buffers<cr>' },
      { '<leader>H', '<cmd>Telescope help_tags<cr>' },
    },
  },

  {
    'nvim-telescope/telescope-ui-select.nvim',
  },
}
