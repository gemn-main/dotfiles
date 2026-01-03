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

-- Прозрачность
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

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
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      -- Минимальная конфигурация Catppuccin БЕЗ интеграций
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        no_integrations = true  -- Отключаем ВСЕ интеграции
      })
      vim.cmd.colorscheme("catppuccin")
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- Базовая настройка Lualine
      require("lualine").setup({
        options = {
          theme = "auto"  -- Автоматически подхватит Catppuccin
        }
      })
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  }
})

-- Базовые горячие клавиши
local keymap = vim.keymap
keymap.set("n", "<leader>e", ":Lex 30<CR>")
keymap.set("n", "<C-s>", ":w<CR>")
keymap.set("n", "<C-q>", ":q<CR>")
keymap.set("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>")
keymap.set("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
