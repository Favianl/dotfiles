require("tokyonight").setup({
	style = "night", -- The theme comes in four styles, "storm", "moon", a darker variant "night" and "day".
	transparent = true,
	styles = {
		sidebars = "transparent",
		floats = "transparent",
	},

	-- Change color of unused variables, function, params, etc in Tokionight
	on_highlights = function(hl)
		hl.DiagnosticUnnecessary = { fg = "#6e7cb5" }
	end,
})

vim.cmd("colorscheme tokyonight")

--[[ vim.cmd("colorscheme nightfly")
local status, _ = pcall(vim.cmd,"colorscheme nightfly")
if not status then
  print("Colorscheme not found!")
  return
end ]]
