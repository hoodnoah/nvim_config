local M = {}

local whichkey = require("which-key")


--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local buf_map = vim.api.nvim_buf_set_keymap

-- remap the key used to leave insert mode
-- map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', '<leader>n', [[:NvimTreeToggle]], {})

map('n', '<leader>l', [[:IndentLinesToggle]], {})
map('n', '<leader>t', [[:TagbarToggle]], {})
map('n', '<leader>ff', [[:Telescope find_files]], {})

-- Setup language server keys
local function keymappings(client, bufnr)
  local opts = { noremap = true, silent = true }

  -- Key mappings
  buf_map(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
  map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
  map("n", "[e", "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>", opts)
  map("n", "]e", "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>", opts)

  -- Whichkey
  local keymap_l = {
    l = {
      name = "Code",
      r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
      a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
      d = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Line Diagnostics" },
      i = { "<cmd>LspInfo<CR>", "Lsp Info" },
    },
  }
  if client.resolved_capabilities.document_formatting then
    keymap_l.l.f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format Document" }
  end

  local keymap_g = {
    name = "Goto",
    d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
    D = { "<Cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
    s = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature Help" },
    I = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Goto Implementation" },
    t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Goto Type Definition" },
  }
  whichkey.register(keymap_l, { buffer = bufnr, prefix = "<leader>" })
  whichkey.register(keymap_g, { buffer = bufnr, prefix = "g" })
end

function M.setup(client, bufnr)
  keymappings(client, bufnr)
end

return M

