require "nvchad.options"

local o = vim.o
local g = vim.g
local autocmd = vim.api.nvim_create_autocmd

g.mapleader = " "

o.cursorlineopt = "both"

o.nu = true
o.relativenumber = true

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.wrap = false

o.swapfile = false
o.backup = false
o.undodir = os.getenv "HOME" .. "/vim/undodir"
o.undofile = true

o.hlsearch = true
o.incsearch = true

o.termguicolors = true

o.scrolloff = 8
o.signcolumn = "yes"

o.updatetime = 50
o.colorcolumn = "120"

autocmd("TextYankPost", {
  desc = "highlight on yank",
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = "200" }
  end,
})

autocmd("VimResized", {
  desc = "handle vim resizing",
  pattern = "*",
  command = "tabdo wincmd =",
})
