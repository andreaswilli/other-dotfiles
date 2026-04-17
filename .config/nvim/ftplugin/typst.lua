local openPdf = function()
  local filepath = vim.api.nvim_buf_get_name(0)

  if filepath:match("%.typ$") then
    local pdf_path = filepath:gsub("%.typ$", ".pdf")
    -- vim.system({ "sioyek", pdf_path })
    vim.system({ "zathura", pdf_path })
  end
end

vim.keymap.set('n', '<leader>ll', openPdf, { buffer = true })



-- Show assembly for C code block under cursor
vim.keymap.set('n', '<leader>i', function()
  local node = vim.treesitter.get_node()
  if not node then
    vim.notify('No treesitter node under cursor', vim.log.levels.WARN)
    return
  end

  -- Walk up the tree to find a raw_blck / code block node
  local block = node
  while block do
    local t = block:type()
    if t == 'raw_blck' then
      break
    end
    block = block:parent()
  end

  if not block then
    vim.notify('Cursor is not inside a code block', vim.log.levels.WARN)
    return
  end

  -- Get full text of the block
  local text = vim.treesitter.get_node_text(block, 0)

  -- Check that it's a C code block and strip the fences
  local c_code = text:match('^```c%s*\n(.-)%s*```%s*$')
  if not c_code then
    vim.notify('Not a ```c code block', vim.log.levels.WARN)
    return
  end

  -- Compile to assembly
  local result = vim.fn.system('echo ' .. vim.fn.shellescape(c_code) .. ' | gcc -O1 -S -o - -xc -')
  if vim.v.shell_error ~= 0 then
    vim.notify('gcc error:\n' .. result, vim.log.levels.ERROR)
    return
  end

  -- Open floating buffer
  local asm_lines = vim.split(result, '\n')
  local float_buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(float_buf, 0, -1, false, asm_lines)
  vim.bo[float_buf].filetype = 'asm'
  vim.bo[float_buf].bufhidden = 'wipe'

  local width = math.min(100, vim.o.columns - 4)
  local height = math.min(#asm_lines, vim.o.lines - 4)
  vim.api.nvim_open_win(float_buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    col = math.floor((vim.o.columns - width) / 2),
    row = math.floor((vim.o.lines - height) / 2),
    style = 'minimal',
    border = 'rounded',
    title = ' Assembly (gcc -O1) ',
    title_pos = 'center',
  })

  -- Press q or <Esc> to close
  vim.keymap.set('n', 'q', '<cmd>close<CR>', { buffer = float_buf, silent = true })
  vim.keymap.set('n', '<Esc>', '<cmd>close<CR>', { buffer = float_buf, silent = true })
end, { buffer = 0 })
