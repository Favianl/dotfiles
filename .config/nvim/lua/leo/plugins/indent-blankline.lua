local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
	return
end

-- vim.cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#7a333a gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#75623e gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#4b613b gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent4 guifg=#2b5b61 gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent5 guifg=#3c6b91 gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent6 guifg=#70437d gui=nocombine]])
vim.cmd([[highlight IndentBlanklineContextChar guifg=#a6a6a6 gui=nocombine]])

indent_blankline.setup({
	char = "▏",
	show_current_context = true,
	char_highlight_list = {
		"IndentBlanklineIndent1",
		"IndentBlanklineIndent2",
		"IndentBlanklineIndent3",
		"IndentBlanklineIndent4",
		"IndentBlanklineIndent5",
		"IndentBlanklineIndent6",
	},
})
