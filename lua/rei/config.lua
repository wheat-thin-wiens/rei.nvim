local M = {}

--- @class rei.config: settings
--- @field settings settings
--- @field setup fun(opts?: settings)

--- @class settings
--- @field styles styles
--- @field integrations integrations
--- @field lang lang
--- @field extras extras
--- @field highlight_overrides table<string, table>

--- @class styles
--- @field [string] table

--- @class integrations
--- @field [string] plugin

--- @class plugin
--- @field enabled boolean
--- @field [string] any

--- @class lang
--- @field [string] boolean

--- @class extras
--- @field transparency boolean
--- @field high_contrast boolean
--- @field terminal_colors boolean
--- @field telescope_theme string

-- Default settings
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
    gitsigns         = { enabled = true },

    hrsh7th_cmp = {
      enabled = true,
      italic_highlight = false,
    },

    indent_blankline = { enabled = true },
    lazy             = { enabled = true },
    lsp              = { enabled = true },
    mason            = { enabled = true },
    neogit           = { enabled = true },
    neotree          = { enabled = true },
    noice            = { enabled = true },
    notify           = { enabled = true },
    obsidian         = { enabled = true },
    render_markdown  = { enabled = true },

    telescope = {
      enabled = true,
      theme = "default",
    },

    treesitter       = { enabled = true },
    which_key        = { enabled = true },
  },
  lang = {
    go   = true,
    java = true,
    ts   = true,
  },
  extras = {
    transparency = false,
    high_contrast = false,
    terminal_colors = true,
  },
  highlight_overrides = {}
}

--- Takes user config and saves it in settings
--- Accessible from other modules with `require("rei.config")`
--- @param opts settings
M.setup = function(opts)
  opts = opts or M.settings

  -- Iterate through opts
  -- k is list of setting categories, v is settings within a category
  for k, v in pairs(opts) do

    -- Integration settings
    if k == "integrations" then
      -- Iterate through plugins and their corresponding settings
      for plugin, settings in pairs(v) do
        M.settings.integrations[plugin] = settings
      end

    -- Style settings
    elseif k == "styles" then
      for style, setting in pairs(v) do
        if M.settings.styles[style] ~= nil then
          M.settings.styles[style] = vim.tbl_deep_extend("keep", M.settings.styles[style], setting)
        end
      end

    -- Lang settings
    -- elseif k == "lang" then
    --   for lang, setting in pairs(v) do
    --     if M.settings.lang[lang] ~= nil then
    --       M.settings.lang[lang] = vim.tbl_deep_extend("keep", M.settings.lang[lang], setting)
    --     end
    --   end
    else
      M.settings[k] = v
    end
  end
end

return setmetatable(M, { __index = M.settings })
