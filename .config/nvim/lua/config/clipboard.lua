if vim.fn.has("wsl") == 1 then

  local clip = "/mnt/c/Windows/System32/clip.exe"
  local powershell = "/mnt/c/eplatform/mytools/PowerShell-7.3.1-win-x64/pwsh.exe"

  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = clip,
      ["*"] = clip
    },
    paste = {
      ["+"] = powershell .. ' -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ["*"] = powershell .. ' -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))'
    },
    cache_enabled = 0
  }
end
