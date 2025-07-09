return {
  {
    'mason-org/mason.nvim',
    lazy = false,
  },

  {
    'mason-org/mason-lspconfig.nvim',
    lazy = false,

    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()

      vim.lsp.config('angularls', {
        on_attach = function()
          vim.cmd [[compiler angular]]
        end,
      })

      vim.lsp.config('ts_ls', {
        init_options = {
          preferences = {
            importModuleSpecifierPreference = 'relative',
          }
        }
      })

      vim.lsp.config('tinymist', {
        settings = {
          formatterMode = 'typstyle',
          formatterProseWrap = true,
          formatterPrintWidth = 80,
          exportPdf = 'onType',
        }
      })

      vim.diagnostic.config({
        virtual_text = false,
        float = { border = 'rounded' },
      })
    end,
  },

  {
    'neovim/nvim-lspconfig',
    lazy = false,

    keys = {
      { 'gd',         vim.lsp.buf.definition },
      { 'gr',         vim.lsp.buf.references },
      { 'gn',         vim.diagnostic.goto_next },
      { 'gp',         vim.diagnostic.goto_prev },
      { 'K',          function() vim.lsp.buf.hover { border = "rounded" } end },
      { '<leader>lr', vim.lsp.buf.rename },
      { '<leader>la', vim.lsp.buf.code_action,                                mode = { 'n', 'v' } },
      { '<leader>lf', function()
        vim.lsp.buf.format {
          async = true,
          filter = function(client)
            return client.name ~= 'ts_ls'
                and client.name ~= 'angularls'
          end
        }
      end },
    },
  },
}
