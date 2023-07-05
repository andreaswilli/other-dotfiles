local lsp = require('lsp-zero')
local cmp = require('cmp')

local cmp_config = lsp.defaults.cmp_config({
  window = {
    completion = cmp.config.window.bordered()
  },
  mapping = cmp.mapping.preset.insert({
      ['<C-Space>'] = cmp.mapping.complete(),
      ["<C-e>"] = function ()
        if cmp.visible() then
          cmp.abort()
        else
          cmp.complete()
        end
      end,
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
})

cmp_config.mapping['<Tab>'] = cmp.config.disable
cmp_config.mapping['<S-Tab>'] = cmp.config.disable

cmp.setup(cmp_config)

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

