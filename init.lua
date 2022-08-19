-- [[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('keys')     -- Keymaps
require('vars')     -- Variables
require('plug')     -- Plugins
require('opts')     -- Options

-- PLUGINS
require('nvim-tree').setup{}
require('lualine').setup {
    options = {
        theme = 'dracula-nvim'
    }
}
require('nvim-autopairs').setup{}

-- nvim-cmp
local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup{
    mapping = cmp.mapping.preset.insert({
          ['<Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end,
          ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end,
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<Esc>'] = cmp.mapping.close(),
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
        }),
   sources = {
      { name = "nvim_lsp" },
      { name = "path" },
      { name = "buffer" },
   },
   completion = {
       keyword_length = 1,
       completeopt = "menu,noselect"
   },
   view = {
       entries = "custom"
   },
   formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text",
      menu = ({
        nvim_lsp = "[LSP]",
        ultisnips = "[US]",
        nvim_lua = "[Lua]",
        path = "[Path]",
        buffer = "[Buffer]",
        emoji = "[Emoji]",
          omni = "[Omni]",
      }),
    }),
  },
}
