require('suliman.base')
require('suliman.highlights')
require('suliman.maps')
require('suliman.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('suliman.macos')
end
if is_win then
  require('suliman.windows')
end
