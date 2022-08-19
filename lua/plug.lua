-- [[ plug.lua ]]

return require('packer').startup(function(use)
  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  use { 'Mofiqul/dracula.nvim' }

  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' } 

  -- [[ autocompletion ]]
  use { 'neovim/nvim-lspconfig' }                    -- collection of configurations for built-in lsp client
  use { 'hrsh7th/nvim-cmp' }                         -- plugin for autocompletion
  use { 'hrsh7th/cmp-nvim-lsp' }                     -- lsp source for nvim-cmp
  use { 'saadparwaiz1/cmp_luasnip' }                 -- snippets source for nvim-cmp
  use { 'L3MON4D3/LuaSnip' }                         -- snippets plugin
end)
