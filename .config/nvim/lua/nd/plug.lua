local Plug = vim.fn['plug#']
vim.call('plug#begin')

-- theming
Plug 'folke/tokyonight.nvim'

-- lsp & completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug ('prettier/vim-prettier', { run = 'yarn install --frozen-lockfile --production' })

Plug ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
Plug 'windwp/nvim-autopairs'
Plug 'ggandor/leap.nvim'
Plug 'mbbill/undotree'

Plug 'nvim-lua/plenary.nvim'
Plug ('nvim-telescope/telescope.nvim', { tag = '0.1.0' })

Plug 'vim-airline/vim-airline'

vim.call('plug#end')
