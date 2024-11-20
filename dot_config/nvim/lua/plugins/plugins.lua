vim.g.minipairs_disable = true
vim.opt.wrap = true
-- vim.g['codi#raw'] = true
-- vim.api.nvim_create_autocmd({ "Codi" }, { command = "startinsert" })
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { silent = true, noremap = true })

-- require("conform").setup({
--   formatters_by_ft = {
--     -- Conform will run multiple formatters sequentially
--     python = { "isort", "black" },
--   },
-- })

return {
  { "jbyuki/venn.nvim" },
  { "tpope/vim-surround" },
  { "tpope/vim-fugitive" },
  -- { "junegunn/fzf" },
  -- { "junegunn/fzf.vim" },
  -- { "mileszs/ack.vim", lazy = true, cmd = { "Ack" } },
  -- { "alpha-nvim", enabled = false },
  { "dashboard-nvim", enabled = false },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      dashboard = { enabled = false },
      -- bigfiles = { enabled = true },
    },
  },

  -- { "unblevable/quick-scope" }, -- highlights first available letters of a word to use f/t movement
  -- { "itchyny/vim-cursorword" }, -- underlines word under cursor
  { "dyng/ctrlsf.vim" },
  { "metakirby5/codi.vim", lazy = true, cmd = { "Codi" } },
  { "evanleck/vim-svelte" },
  { "jparise/vim-graphql" },
  -- {
  --   "echasnovski/mini.fuzzy",
  --   version = false,
  --   config = function()
  --     require("mini.fuzzy").setup()
  --   end,
  -- },

  {
    "vuki656/package-info.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("package-info").setup({ hide_up_to_date = false })
      vim.api.nvim_set_keymap(
        "n",
        "<leader>ns",
        "<cmd>lua require('package-info').show({ force = true })<cr>",
        { silent = true, noremap = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>nd",
        "<cmd>lua require('package-info').delete()<cr>",
        { silent = true, noremap = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>np",
        "<cmd>lua require('package-info').change_version()<cr>",
        { silent = true, noremap = true }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>ni",
        "<cmd>lua require('package-info').install()<cr>",
        { silent = true, noremap = true }
      )
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "rust-analyzer",
        "shfmt",
        "flake8",
        "pyright",
        "angular-language-server",
        "svelte-language-server",
        "black",
        "isort",
      },
    },
  },

  {
    "kelly-lin/telescope-ag",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("ag")
    end,
  },
  -- require("notify").setup({
  --   background_colour = "#000000",
  -- }),
  -- {
  --   "lewis6991/gitsigns.nvim",
  --   config = function()
  --     require("gitsigns").setup()
  --   end,
  -- },
  --
  {
    "nvim-lspconfig",
    opts = {
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
      inlay_hints = { enabled = false },
    },
  },
  {
    "stevearc/conform.nvim",
    -- optional = true,
    opts = {
      formatters_by_ft = {
        ["python"] = { "black", "isort" },
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    opts = {
      -- Your options go here
      -- name = "venv",
      -- auto_refresh = false
    },
    event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    keys = {
      -- Keymap to open VenvSelector to pick a venv.
      { "<leader>vs", "<cmd>VenvSelect<cr>" },
      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
      { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
    },
  },
}
