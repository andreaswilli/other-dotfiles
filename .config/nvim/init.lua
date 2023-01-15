require('nd.set')
require('nd.map')
require('nd.plug')

vim.cmd[[colorscheme tokyonight]]

-- format on save
-- TODO: look into null-ls
vim.cmd('autocmd BufWritePre * PrettierAsync')
