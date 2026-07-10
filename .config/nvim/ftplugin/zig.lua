local command = require("helpers.command")

local compileAndRun = function()
  vim.cmd("silent write")

  local sourceName = vim.fn.expand("%")

  command.run { "zig", "run", sourceName }
end

vim.keymap.set('n', '<leader>o', compileAndRun, { buffer = true })
