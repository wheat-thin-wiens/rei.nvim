--- This gets loaded upon startup (similar to 
--- the plugin directory) and begins the process
--- of setting the colorscheme
require("rei").colorscheme()

local scheme = vim.api.nvim_exec2("colorscheme", { output = true })

-- if vim.deep_equal(scheme, "rei") then
--   vim.api.nvim_create_autocmd("FocusGained", {
--     pattern = "*",
--     command = "hi! link Visual VisualActive"
--   })
--
--   vim.api.nvim_create_autocmd("FocusLost", {
--     pattern = "*",
--     command = "hi! link Visual VisualInactive"
--   })
-- end
