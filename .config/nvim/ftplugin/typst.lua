local openPdf = function()
  local filepath = vim.api.nvim_buf_get_name(0)

  if filepath:match("%.typ$") then
    local pdf_path = filepath:gsub("%.typ$", ".pdf")
    -- vim.system({ "sioyek", pdf_path })
    vim.system({ "zathura", pdf_path })
  end
end

vim.keymap.set('n', '<leader>ll', openPdf, { buffer = true })

