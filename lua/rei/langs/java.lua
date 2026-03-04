local M = {
  ["@type.java"] = { fg = P.blue },

  ["@lsp.type.builtin.java"] = { fg = P.yellow },
  ["@lsp.type.class.java"] = { fg = P.blue },
  ["@lsp.type.modifier.java"] = { fg = P.yellow },
  ["@lsp.type.namespace.java"] = { fg = P.fg, italic = false },

  ["@lsp.typemod.property.declaration.java"] = { fg = P.purple },
  ["@lsp.typemod.property.private.java"] = { fg = P.purple },

  ["@variable.builtin.java"] = { fg = P.fg },
}

return M
