vim.keymap.set('n', '<leader>o', ':w | !gcc % -o %:r.bin && ./%:r.bin<cr>', { buffer = true })
