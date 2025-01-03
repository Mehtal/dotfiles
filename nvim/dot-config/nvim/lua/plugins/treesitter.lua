return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "bash", "c", "html", "lua", "luadoc", "markdown", "vim", "vimdoc", "python" },
		-- Autoinstall languages that are not installed
		auto_install = true,
		highlight = {
			enable = true,
			-- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
			--  If you are experiencing weird indenting issues, add the language to
			--  the list of additional_vim_regex_highlighting and disabled languages for indent.
			additional_vim_regex_highlighting = { "ruby" },
		},
		indent = { enable = true, disable = { "ruby" } },
		textobjects = {
			move = {
				enable = true,
				set_jump = true,
				goto_next_start = {
					["<C-f>"] = "@function.outer",
					["<C-d>"] = "@class.outer",
					["<C-e>"] = "@assignment",
				},
				goto_previous_start = {
					["<C-s>"] = "@function.outer",
					["<C-q>"] = "@class.outer",
					["<C-a>"] = "@assignment",
				},
			},
			select = {
				enable = true,

				-- Automatically jump forward to textobj, similar to targets.vim
				lookahead = true,

				keymaps = {
					-- You can use the capture groups defined in textobjects.scm
					["af"] = { query = "@function.outer", desc = "Select outer function" },
					["if"] = { query = "@function.inner", desc = "Select inner function" },
					["ac"] = { query = "@class.outer", desc = "Select outer  part of a class " },
					["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
					-- You can also use captures from other query groups like `locals.scm`
					["ii"] = { query = "@conditional.inner", desc = "Select inner part of a class region" },
					["ai"] = { query = "@conditional.outer", desc = "Select inner part of a class region" },
					["il"] = { query = "@loop.inner", desc = "Select inner part of a class region" },
					["al"] = { query = "@loop.outer", desc = "Select inner part of a class region" },
				},
			},
		},
	},
	config = function(_, opts)
		-- [[ Configure Treesitter ]] See `:help nvim-treesitter`

		-- Prefer git instead of curl in order to improve connectivity in some environments
		require("nvim-treesitter.install").prefer_git = true
		---@diagnostic disable-next-line: missing-fields
		require("nvim-treesitter.configs").setup(opts)

		-- There are additional nvim-treesitter modules that you can use to interact
		-- with nvim-treesitter. You should go explore a few and see what interests you:
		--
		--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
		--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
		--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
	end,
}
