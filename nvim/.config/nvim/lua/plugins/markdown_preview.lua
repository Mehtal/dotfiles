return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && npm install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
		vim.g.mkdp_browser = "firefox"
		vim.g.mkdp_port = "8080" -- Set a specific port if needed
	end,
	config = function()
		vim.keymap.set("n", "łµ", "<cmd> MarkdownPreview <CR>", { desc = "preview markdown in the browser" })
	end,
	ft = { "markdown" },
}
