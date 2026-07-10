local command = require "helpers.command"

local compileAndRun = function()
  vim.cmd("silent write")

  local sourceName = vim.fn.expand("%")
  local binName = vim.fn.expand("%:r") .. ".bin"

  local code = command.run { "gcc", sourceName, "-o", binName }
  if code ~= 0 then return end
  command.run { binName }
  command.run { "rm", "-f", binName }
end

vim.keymap.set('n', '<leader>o', compileAndRun, { buffer = true })
