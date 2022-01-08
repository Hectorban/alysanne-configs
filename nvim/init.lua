-- try to call custom init
pcall(require, "custom")

local core_modules = {
   "core.options",
   "core.autocmds",
   "core.mappings",
}

for _, module in ipairs(core_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

-- Custom font for neovide
vim.o.guifont = "FiraCode Nerd Font:h11"

-- non plugin mappings
require("core.mappings").misc()
