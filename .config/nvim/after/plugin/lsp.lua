local opts = { noremap=true, silent=true }
vim.keymap.set('n', 'gn', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', 'gp', vim.diagnostic.goto_prev, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.format { async=true } end, bufopts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').tsserver.setup{
  capabilities = capabilities,
  on_attach = on_attach,
}

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig').html.setup{
  capabilities = capabilities,
  on_attach = on_attach,
}
require('lspconfig').cssls.setup{
  capabilities = capabilities,
  on_attach = on_attach,
}
