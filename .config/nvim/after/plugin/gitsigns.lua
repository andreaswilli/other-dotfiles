require('gitsigns').setup()

-- gitsigns
vim.keymap.set('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', { silent = true })
vim.keymap.set('n', '<leader>gn', ':Gitsigns next_hunk<CR>', { silent = true })
vim.keymap.set('n', '<leader>gp', ':Gitsigns prev_hunk<CR>', { silent = true })
vim.keymap.set('n', '<leader>gr', ':Gitsigns reset_hunk<CR>', { silent = true })
vim.keymap.set('n', '<leader>gl', ':Gitsigns toggle_current_line_blame<CR>', { silent = true })

-- fugitive
vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { silent = true })
vim.keymap.set('n', '<leader>gs', ':tab Git<CR>', { silent = true })
