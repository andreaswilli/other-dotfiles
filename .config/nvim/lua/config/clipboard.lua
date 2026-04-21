if vim.fn.has("wsl") == 1 then

  local win32yank = "/mnt/c/eplatform/bin/win32yank.exe"

  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = win32yank .. " -i --crlf",
      ["*"] = win32yank .. " -i --crlf"
    },
    paste = {
      ["+"] = win32yank .. " -o --lf",
      ["*"] = win32yank .. " -o --lf"
    },
    cache_enabled = 0
  }
end
