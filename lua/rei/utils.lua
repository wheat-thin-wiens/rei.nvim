local M = {}

local settings = require("rei.config").settings

M.telescope_theme = function()
  if settings.integrations.telescope == true then
    return require("rei.groups.telescope").default
  else
    return require("rei.groups.telescope").borderless
  end
end

M.transparency_enabled = function()
  if settings.transparency then
    return "None"
  else
    return false
  end
end

return M
