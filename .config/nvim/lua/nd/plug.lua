local Plug = vim.fn['plug#']
vim.call('plug#begin')

-- theming
Plug 'folke/tokyonight.nvim'
Plug "olimorris/onedarkpro.nvim"
Plug ('projekt0n/github-nvim-theme', { tag = '0.0.7' })

Plug ('prettier/vim-prettier', { run = 'yarn install --frozen-lockfile --production' })

-- LSP Support
Plug 'neovim/nvim-lspconfig'             -- Required
Plug 'williamboman/mason.nvim'           -- Optional
Plug 'williamboman/mason-lspconfig.nvim' -- Optional
Plug ('VonHeikemen/lsp-zero.nvim', { branch = 'v1.x' })

-- Autocompletion Engine
Plug 'hrsh7th/nvim-cmp'         -- Required
Plug 'hrsh7th/cmp-nvim-lsp'     -- Required
Plug 'hrsh7th/cmp-buffer'       -- Optional
Plug 'hrsh7th/cmp-path'         -- Optional
Plug 'saadparwaiz1/cmp_luasnip' -- Optional
Plug 'hrsh7th/cmp-nvim-lua'     -- Optional

--  Snippets
Plug 'L3MON4D3/LuaSnip'             -- Required
Plug 'rafamadriz/friendly-snippets' -- Optional

Plug ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
Plug 'windwp/nvim-autopairs'
Plug 'numToStr/Comment.nvim'
Plug 'ggandor/leap.nvim'
Plug 'mbbill/undotree'
Plug 'lewis6991/gitsigns.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug ('nvim-telescope/telescope.nvim', { tag = '0.1.0' })

Plug 'itchyny/lightline.vim'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

Plug 'mattn/emmet-vim'

Plug 'lervag/vimtex'

Plug 'folke/neodev.nvim'

vim.call('plug#end')
