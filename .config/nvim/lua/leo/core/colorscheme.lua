require("tokyonight").setup({
	style = "night", -- The theme comes in four styles, "storm", "moon", a darker variant "night" and "day".
})

vim.cmd("colorscheme tokyonight")

--[[ vim.cmd("colorscheme nightfly")
local status, _ = pcall(vim.cmd,"colorscheme nightfly")
if not status then
  print("Colorscheme not found!")
  return
end ]]
