-- Just an example, supposed to be placed in /lua/custom/
local userPlugins = require "custom.plugins"

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "night-owl",
}

M.mappings = {
   terminal = {
     new_horizontal = "<leader>t",
   }, 
}

M.plugins = {
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig"
    }
  },
  install = userPlugins
}

M.mappings.plugins = {
  telescope = {
    find_files = "<C-p>",
    live_grep = "<C-f>",
  },
}

return M
