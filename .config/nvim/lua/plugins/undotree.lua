return {
  'mbbill/undotree',

  init = function()
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_WindowLayout = 2
    vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
    vim.opt.undofile = true
  end,

  keys = {
    { '<leader>u', '<cmd>UndotreeToggle<cr>' },
  },
}
