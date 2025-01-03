return {
	"NvChad/nvterm",
	config = function()
		require("nvterm").setup({
			terminals = {
				shell = vim.o.shell,
				list = {},
				type_opts = {
					float = {
						relative = "editor",
						row = 0.3,
						col = 0.25,
						width = 0.5,
						height = 0.4,
						border = "double",
					},
					horizontal = { location = "rightbelow", split_ratio = 0.3 },
					vertical = { location = "rightbelow", split_ratio = 0.5 },
				},
			},
			behavior = {
				autoclose_on_quit = {
					enabled = false,
					confirm = true,
				},
				close_on_exit = true,
				auto_insert = true,
			},
		})

		local terminal = require("nvterm.terminal")
		local toggle_mode = { "n", "t" }
		vim.keymap.set(toggle_mode, "<A-j>", function()
			terminal.toggle("horizontal")
		end, { desc = "toggle horizontal term" })
		vim.keymap.set(toggle_mode, "<A-l>", function()
			terminal.toggle("vertical")
		end, { desc = "toggle vertical term" })
		vim.keymap.set(toggle_mode, "<A-i>", function()
			terminal.toggle("float")
		end, { desc = "toggle float term" })
	end,
}
