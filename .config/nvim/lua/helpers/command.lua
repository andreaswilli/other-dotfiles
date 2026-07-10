local M = {}

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

M.run = run

return M
