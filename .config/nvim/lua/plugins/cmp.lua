return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'zbirenbaum/copilot-cmp',
    'quangnguyen30192/cmp-nvim-ultisnips',
    'onsails/lspkind.nvim',
  },

  config = function()
    local cmp = require('cmp')
    local lspkind = require('lspkind')

    cmp.setup {
      snippet = {
        expand = function(args)
          vim.fn["UltiSnips#Anon"](args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      preselect = cmp.PreselectMode.None,
      completion = {
        completeopt = 'menuone,noselect,noinsert',
      },
      formatting = {
        format = lspkind.cmp_format({
          mode = 'symbol_text',
          symbol_map = { Copilot = "" },
          maxwidth = {
            menu = 15,       -- leading text (labelDetails)
            abbr = 25,       -- actual suggestion item
          },
          ellipsis_char = '...',
        }),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-e>'] = function()
          if cmp.visible() then
            cmp.abort()
          else
            cmp.complete()
          end
        end,
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
      }),
      sources = cmp.config.sources({
        { name = 'copilot' },
        { name = 'ultisnips' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
      }, {
        { name = 'buffer' },
      }),
      sorting = {
        priority_weight = 2,
        comparators = {
          require("copilot_cmp.comparators").prioritize,

          -- Below is the default comparitor list and order for nvim-cmp
          cmp.config.compare.offset,
          -- cmp.config.compare.scopes, --this is commented in nvim-cmp too
          cmp.config.compare.exact,
          cmp.config.compare.score,
          cmp.config.compare.recently_used,
          cmp.config.compare.locality,
          cmp.config.compare.kind,
          cmp.config.compare.sort_text,
          cmp.config.compare.length,
          cmp.config.compare.order,
        },
      },
    }

    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      completion = {
        completeopt = 'menuone,noselect',
      },
      sources = {
        { name = 'buffer' }
      }
    })

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      completion = {
        completeopt = 'menuone,noselect',
      },
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      }),
      matching = { disallow_symbol_nonprefix_matching = false }
    })
  end,
}
