local M = {}

M.defaults = {
  styles = {
    comments = {},
    keywords = {},
    identifiers = {},
    functions = {},
    variables = {},
    booleans = {}
  },
  integrations = {
    lsp = true,
  },
  highlight_overrides = {}
}

return M
