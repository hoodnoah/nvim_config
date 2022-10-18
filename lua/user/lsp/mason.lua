local M = {}

local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

M.setup = function()
  mason.setup()
end

return M
