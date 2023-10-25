vim.keymap.set('n', '<leader>r', ':source $MYVIMRC<cr>')

vim.keymap.set('n', '<leader>h', vim.cmd.nohlsearch)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set('x', 'p', '"_dP')
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')
vim.keymap.set('n', '<leader>c', '"_c')
vim.keymap.set('v', '<leader>c', '"_c')

vim.cmd('cabbrev h vert h')
vim.cmd('cabbrev help vert help')

-- this is actually overruled by the luasnip config, only left here as a reminder
vim.keymap.set('i', '<S-Tab>', '<C-d>')

vim.keymap.set('n', 'gh', function () vim.cmd(vim.fn.empty(vim.fn.filter(vim.fn.getwininfo(), 'v:val.quickfix')) == 1 and 'cope' or 'ccl') end)
vim.keymap.set('n', 'gj', function ()
  success, err = pcall(vim.cmd, 'cn')
  if (not success) then print(err) end
end)
vim.keymap.set('n', 'gk', function ()
  success, err = pcall(vim.cmd, 'cp')
  if (not success) then print(err) end
end)
