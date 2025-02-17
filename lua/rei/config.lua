local M = {}

--- @class settings
--- @field styles table
--- @field integrations table
--- @field terminal_colors boolean
--- @field highlight_overrides table

M.settings = {
  styles = {
    comments = {},
    keywords = {},
    identifiers = {},
    functions = {},
    booleans = {},
    loops = {},
    variables = {}
  },
  integrations = {
    gitsigns = true,
    indent_blankline = true,
    lsp = true,
    neotree = true,
    render_markdown = true,
    treesitter = true,
    which_key = true,
  },
  terminal_colors = true,
  highlight_overrides = {}
}

--- Takes user config and saves it in settings
--- @param opts settings
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
          -- M.settings.styles[style] = vim.tbl_deep_extend("keep", setting, M.settings.styles[style])
        end
      end
    else
      M.settings[k] = v
    end
  end
end

return setmetatable(M, { __index = M.settings })
