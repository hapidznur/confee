-- Load all mod
local load = function(mod)
  package.loaded[mod] = nil
end

-- Load Folder
require('user.settings')
require('user.commands')
require('user.keymaps')

-- Load plugins
require('user.plugins')

-- Load colorscheme
pcall(vim.cmd.colorscheme, 'tokyonight')

