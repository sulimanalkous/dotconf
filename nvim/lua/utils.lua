
-- Functional weapper for mapping custom keybindings
	-- mode (as in Vim modes like Normal/Insert mode)
	-- lhs (the custom keybinds you need)
	-- rhs (the commands or existing keybinds to customise)
	-- opts (additional options like <silent>/<noremap>, see :h map-arguments for more info on it)

local M = {}

function M.map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.setup(capabilities, on_attach)
  require("lspconfig").rust_analyzer.setup({
    capabilities = capabilities,
    on_attach = on_attach,
  })
end

return M
