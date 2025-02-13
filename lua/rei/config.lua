local M = {}

M.settings = {
  styles = {
    comments = {},
    keywords = {},
    identifiers = {},
    functions = {},
    variables = {},
    booleans = {}
  },
  integrations = {
    gitsigns = true,
    indent_blankline = true,
    lsp = true,
    neotree = true,
  },
  terminal_colors = true,
  highlight_overrides = {}
}

M.setup = function(opts)
  opts = opts or M.settings

  for k, v in pairs(opts) do
    if k == "integrations" then
      for plugin, enabled in pairs(v) do
        M.settings.integrations[plugin] = enabled
      end
    elseif k == "styles" then
      for style, setting in pairs(v) do
        if M.settings.styles[style] ~= nil then
          M.settings.styles[style] = vim.tbl_deep_extend("keep", M.settings.styles[style], setting)
        end
      end
    else
      M.setting[k] = v
    end
  end
end

return setmetatable(M, { __index = M.settings })
