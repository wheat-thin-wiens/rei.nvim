local M = {}

-- M.defaults = {
local defaults = {
  terminal_colors = true,
  styles = {
    comments = {},
    keywords = {},
    identifiers = {},
    functions = {},
    variables = {},
    booleans = {}
  },
  integrations = {
    indent_blankline = true,
  },
  highlight_overrides = {}
}

M.setup = function(opts)
  opts = opts or M.defaults

  for k, v in pairs(opts) do
    if k == "integrations" then
      for integration, enabled in pairs(v) do
        defaults.integrations[integration] = enabled
      end
    elseif k == "styles" then
      for style_k, style_v in pairs(v) do
        if defaults.styles[style_k] ~= nil then
          M.styles[style_k] = vim.tbl_deep_extend("keep", defaults.styles[style_k], style_v)
        end
      end
    else
      defaults[k] = v
    end
  end
end

return setmetatable(M, { __index = defaults })
