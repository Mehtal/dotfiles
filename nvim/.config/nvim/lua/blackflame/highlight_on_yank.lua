vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight When Yanking (Copying)",
	group = vim.api.nvim_create_augroup("Highlight-on-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
