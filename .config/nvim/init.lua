require('nd.set')
require('nd.map')
require('nd.plug')

vim.cmd[[colorscheme tokyonight]]

-- format on save
vim.cmd('autocmd BufWritePre * PrettierAsync')
