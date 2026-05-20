-- Базовые настройки
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.guifont = "Fira Code:h16"
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard = 'unnamedplus'
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99

-- Автоустановка Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Настройка плагинов
require("lazy").setup({

  -- Тема
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        no_integrations = true
      })
      vim.cmd.colorscheme("catppuccin")
      -- Прозрачность
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
  },
  --
  -- -- LSP
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("lspconfig").pyright.setup({})
  --   end
  -- },
  --
  -- -- Автодополнение
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     "hrsh7th/cmp-nvim-lsp",
  --   },
  --   config = function()
  --     local cmp = require("cmp")
  --     cmp.setup({
  --       mapping = cmp.mapping.preset.insert({
  --         ["<Tab>"]     = cmp.mapping.select_next_item(),
  --         ["<S-Tab>"]   = cmp.mapping.select_prev_item(),
  --         ["<CR>"]      = cmp.mapping.confirm({ select = true }),
  --         ["<C-Space>"] = cmp.mapping.complete(),
  --       }),
  --       sources = {
  --         { name = "nvim_lsp" },
  --       },
  --     })
  --   end
  -- },

  -- Строка статуса
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = { theme = "auto" }
      })
    end
  },

  -- Подсветка синтаксиса
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "python", "lua" },
        highlight = { enable = true },
      })
    end
  },

  -- Комментирование
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  },

})

-- Горячие клавиши
local keymap = vim.keymap
keymap.set("n", "<leader>e", ":Lex 30<CR>")
keymap.set("n", "<C-s>", ":w<CR>")
keymap.set("n", "<C-q>", ":q<CR>")
keymap.set("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>")
keymap.set("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
