return {
  {
    'williamboman/mason.nvim',
    lazy = false,
  },

  {
    'williamboman/mason-lspconfig.nvim',
    lazy = false,

    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()

      require("mason-lspconfig").setup_handlers {
        function(server_name) -- default handler
          local capabilities = require('cmp_nvim_lsp').default_capabilities()
          require("lspconfig")[server_name].setup {
            capabilities = capabilities,
          }
        end,
        ['angularls'] = function()
          local capabilities = require('cmp_nvim_lsp').default_capabilities()
          require('lspconfig').angularls.setup {
            capabilities = capabilities,
            on_attach = function()
              vim.cmd [[compiler angular]]
            end,
          }
        end,
        ['nil_ls'] = function()
          require('lspconfig').nil_ls.setup({
            settings = {
              ['nil'] = {
                formatting = {
                  command = { "nixfmt" },
                },
              },
            },
          })
        end,
      }

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
      { 'K',          function() vim.lsp.buf.hover { border = "rounded" } end},
      { '<leader>lr', vim.lsp.buf.rename },
      { '<leader>la', vim.lsp.buf.code_action, mode = { 'n', 'v' } },
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
