local M = {}

local settings = require("rei.config").settings

M.telescope_theme = function()
  if settings.integrations.telescope == true then
    return require("rei.plugins.telescope").default
  else
    return require("rei.plugins.telescope").borderless
  end
end

M.telescope_extras = function()
  if settings.extras.telescope_theme == "default" then
    return require("rei.plugins.telescope").default
  else
    return require("rei.plugins.telescope").borderless
  end
end

M.transparency_enabled = function()
  if settings.extras.transparency then
    return "None"
  else
    return false
  end
end

M.contrast_setting = function()
  if settings.extras.high_contrast then
    return require("rei.builtins.contrast").high
  else
    return require("rei.builtins.contrast").low
  end
end

return M
