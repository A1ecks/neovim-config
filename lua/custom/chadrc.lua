---@type ChadrcConfig
local M = {}

M.ui = { theme = 'oceanic-next' }
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")
M.neovide = require("custom.neovide")

return M
