require('nd.set')
require('nd.map')
require('nd.plug')

-- vim.cmd[[colorscheme tokyonight]]
require('github-theme').setup()

-- format on save
-- TODO: look into null-ls
-- vim.cmd('autocmd BufWritePre * PrettierAsync')

-- prevent freeze on Windows when calling :Man (e.g. hover with K)
-- https://github.com/neovim/neovim/issues/21169
vim.o.keywordprg = ':help'
