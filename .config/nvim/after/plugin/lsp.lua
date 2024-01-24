-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
require("neodev").setup({})

local lsp = require('lsp-zero')
lsp.preset('lsp-compe')

lsp.setup()

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local bufopts = { noremap=true, silent=true }
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
vim.keymap.set('n', 'gn', vim.diagnostic.goto_next, bufopts)
vim.keymap.set('n', 'gp', vim.diagnostic.goto_prev, bufopts)
vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, bufopts)
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, bufopts)
vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.format { async=true } end, bufopts)

require('lspconfig').eslint.setup {
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "vue",
    "svelte",
    "astro",
    "html" -- add html to default config
  }
}
