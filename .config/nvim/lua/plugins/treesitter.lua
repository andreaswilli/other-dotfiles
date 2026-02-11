return {
  'nvim-treesitter/nvim-treesitter',

  build = function()
    require('nvim-treesitter.install').update({ with_sync = true })()
  end,

  lazy = false,

  opts = {
    sync_install = false,
    auto_install = true,
    indent = { enable = true },
    highlight = {
      enable = true,
      disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,
    },
  },
}
