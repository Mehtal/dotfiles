return {
  'stevearc/oil.nvim',
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  --dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function()
    require("oil").setup()
      vim.keymap.set("n","ø", require("oil").toggle_float)
  end, 

}
