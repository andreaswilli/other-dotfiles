return {
  'lervag/vimtex',

  init = function()
    vim.g.vimtex_compiler_latexmk = {
      out_dir = 'build',
    }
    vim.g.vimtex_subfile_start_local = 1
  end,

}
