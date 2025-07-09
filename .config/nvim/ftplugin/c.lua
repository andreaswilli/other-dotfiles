local compileAndRun = function()
  vim.cmd("silent write")

  local sourceName = vim.fn.expand("%")
  local binName = vim.fn.expand("%:r") .. ".bin"
  local compile = "gcc " .. sourceName .. " -o " .. binName
  local run = "./" .. binName

  local compileOutFile = assert(io.popen(compile .. " 2>&1", "r"))
  local compileOut = compileOutFile:read("*all")
  compileOutFile:close()

  if compileOut ~= "" then
    print("Compiler Error:\n\n" .. compileOut .. "\n")
    return
  end

  local runOutFile = assert(io.popen(run, "r"))
  local runOut = runOutFile:read("*all")
  runOutFile:close()

  print("Output:\n\n" .. runOut .. "\n")

  os.execute("rm -f " .. binName)
end

vim.keymap.set('n', '<leader>o', compileAndRun, { buffer = true })
