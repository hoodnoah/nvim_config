local M = {}

local status_ok, mason_lsp_config = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end

M.setup = function()
  mason_lsp_config.setup()
end

return M
