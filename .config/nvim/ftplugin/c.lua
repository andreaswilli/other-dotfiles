local run = function(cmd)
  local result = vim.system(cmd, { text = true }):wait()

  if result.stdout ~= "" then
    print("===== Stdout =====\n\n" .. result.stdout .. "\n")
  end

  if result.stderr ~= "" then
    print("===== Stderr =====\n\n" .. result.stderr .. "\n")
  end

  return result.code
end

local compileAndRun = function()
  vim.cmd("silent write")

  local sourceName = vim.fn.expand("%")
  local binName = vim.fn.expand("%:r") .. ".bin"

  local code = run { "gcc", sourceName, "-o", binName }
  if code ~= 0 then return end
  run { binName }
  run { "rm", "-f", binName }
end

vim.keymap.set('n', '<leader>o', compileAndRun, { buffer = true })
