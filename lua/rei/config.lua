local M = {}

M.defaults = {
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
end

return setmetatable(M, { __index = M.defaults })
