local M = {}

function M.load()
  -- Reset highlighting
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "raindrop"

  -- Load colors
  local colors = require("raindrop.colors")

  -- Load theme
  local theme = require("raindrop.theme").setup(colors)

  -- Apply highlights
  for group, settings in pairs(theme) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
