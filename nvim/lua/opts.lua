-- [[ opts.lua ]]
local opt = vim.opt
local cmd = vim.api.nvim_command


-- Snip...

-- [[ Theme ]]
opt.syntax = "ON"				-- str:		Allow syntax highlighting
opt.number = true				-- bool:	set number
opt.relativenumber = true		-- bool:	set relative number
opt.mouse = "a"					-- str:		Allow use mouse
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
--opt.tabstop = 4				-- int:		set tab 4 spaces
opt.termguicolors = true		-- bool:	if term supports ui color then enable
cmd('colorscheme dracula')		-- cmd:		Set the colorscheme
