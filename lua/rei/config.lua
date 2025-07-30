local M = {}

--- @class settings
--- @field styles styles
--- @field integrations integrations
--- @field extras extras
--- @field highlight_overrides styles

--- @class styles
--- @field style table<string, table>

--- @class integrations
--- @field plugin boolean

--- @class extras
--- @field transparency boolean
--- @field high_constrast boolean
--- @field terminal_colors boolean
--- @field telescope_theme string

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
    hrsh7th_cmp = true,
    indent_blankline = true,
    lazy = true,
    lsp = true,
    mason = true,
    neogit = true,
    neotree = true,
    noice = true,
    notify = true,
    obsidian = true,
    render_markdown = true,
    telescope = true,
    treesitter = true,
    which_key = true,
  },
  extras = {
    transparency = false,
    high_contrast = false,
    terminal_colors = true,
    telescope_theme = "default",
  },
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
