require("utils")
--[[ keys.lua ]]
local map = require('utils').map
--local map = vim.api.nvim_set_keymap

-- Change leader to a comma
vim.g.mapleader = ','

map('n', '<c-s>', ':w<CR>', {})
map('i', '<c-s>', '<Esc>:w<CR>a', {})


-- Reload configration without restart nvim
map('n', '<leader>r', ':so %<CR>', {})

local opts = { noremap = true }

map('n', '<c-j>', '<c-w>j', opts)
map('n', '<c-h>', '<c-w>h', opts)
map('n', '<c-k>', '<c-w>k', opts)
map('n', '<c-l>', '<c-w>l', opts)

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Toggle nvim-tree
map('n', '<leader>n', ':NvimTreeToggle<CR>', {})

map('n', '<leader>l', ':IndentLinesToggle<CR>', {})
map('n', '<leader>t', ':TagbarToggle<CR>', {})
map('n', '<leader>ff', ':Telescope find_files<CR>', {})

local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

