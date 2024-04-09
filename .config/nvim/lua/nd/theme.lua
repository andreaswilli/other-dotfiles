-- vim.cmd[[colorscheme tokyonight]]
-- require('github-theme').setup()

require("catppuccin").setup({
  flavour = "mocha",   -- latte, frappe, macchiato, mocha
  styles = {                        -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" },        -- Change the style of comments
    conditionals = { "italic" },
    loops = { "italic" },
    functions = {},
    keywords = { "italic" },
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },
  default_integrations = true,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
})

vim.cmd.colorscheme "catppuccin"
