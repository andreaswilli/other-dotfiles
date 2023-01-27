local Plug = vim.fn['plug#']
vim.call('plug#begin')

-- theming
Plug 'folke/tokyonight.nvim'
Plug "olimorris/onedarkpro.nvim"
Plug ('projekt0n/github-nvim-theme', { tag = '0.0.7' })

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
Plug 'numToStr/Comment.nvim'
Plug 'ggandor/leap.nvim'
Plug 'mbbill/undotree'

Plug 'nvim-lua/plenary.nvim'
Plug ('nvim-telescope/telescope.nvim', { tag = '0.1.0' })

Plug 'itchyny/lightline.vim'

vim.call('plug#end')
