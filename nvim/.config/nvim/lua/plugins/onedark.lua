return {
	"navarasu/onedark.nvim",
	config = function()
		require("onedark").setup({
			style = "darker",
			-- vim.cmd.colorscheme "onedark"
		})
		-- require("onedark").load()
		vim.cmd.colorscheme("onedark")
	end,
}
