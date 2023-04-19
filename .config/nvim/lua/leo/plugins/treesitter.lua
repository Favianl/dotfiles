local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"json",
		"javascript",
		"tsx",
		"html",
		"css",
		"markdown",
		"bash",
		"lua",
		"vim",
	},
	auto_install = true,
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})
