return {
  {
    "maxmx03/dracula.nvim",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
    opts = {
      transparent = true,
    },
  },

  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = true,
  --   opts = { style = "moon" },
  -- },
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   lazy = true,
  --   opts = { style = "moon" },
  -- },
  -- {
  --   "navarasu/onedark.nvim",
  --   lazy = true,
  --   opts = { style = "deep", transparent = true },
  -- },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
  -- config = function()
  --   local dracula = require("dracula")
  --
  --   dracula.setup({
  --     transparent = true,
  --   })
  --
  --   -- vim.cmd.colorscheme("dracula")
  -- end,
}
