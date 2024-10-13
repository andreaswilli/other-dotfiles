vim.keymap.set('n', '<leader>r', ':source $MYVIMRC<cr>')

vim.keymap.set('n', '<leader>h', vim.cmd.nohlsearch)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set('x', 'p', '"_dP')
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d')
vim.keymap.set({ 'n', 'v' }, '<leader>c', '"_c')

vim.keymap.set('v', '<C-c>', '"+y')
vim.keymap.set({ 'n', 'v' }, '<C-v>', '"+p`]')
vim.keymap.set('i', '<C-v>', '<esc>"+p`]a')

vim.cmd('command -nargs=* H tab h <args>')
vim.cmd('command -nargs=* Help tab h <args>')

vim.keymap.set('n', 'gh',
  function()
    vim.cmd(vim.fn.empty(vim.fn.filter(
      vim.fn.getwininfo(), 'v:val.quickfix'
    )) == 1 and 'cope' or 'ccl')
  end)

vim.keymap.set('n', 'gj', function()
  success, err = pcall(vim.cmd, 'cn')
  if (success) then
    vim.api.nvim_feedkeys('zz', 'n', false)
  else
    print(err)
  end
end)

vim.keymap.set('n', 'gk', function()
  success, err = pcall(vim.cmd, 'cp')
  if (success) then
    vim.api.nvim_feedkeys('zz', 'n', false)
  else
    print(err)
  end
end)

-- vim.keymap.set('n', '<leader>t', 'gcATODO: ', { remap = true })
vim.keymap.set('n', '<leader>d', ':g/<debug log>/d')
