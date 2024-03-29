require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Nvim tree
map("n", "<leader><tab>", vim.cmd.NvimTreeToggle)

-- LSP
map("n", "<leader>fm", function()
    vim.lsp.buf.format({ async = false })
end)
map("v", "<leader>fm", function()
    vim.lsp.buf.format({ async = false })
end)

-- Trouble
local opts = { silent = true, noremap = true }
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)
map("n", "gr", "<cmd>TroubleToggle lsp_references<cr>", opts)

-- Undo tree
map("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Symbol outline
map("n", "<leader>l", vim.cmd.SymbolsOutline)

-- Telescope
local builtin = require("telescope.builtin")
map("n", "<leader>af", builtin.find_files, {})
map("n", "<leader>ff", builtin.git_files, {})
map("n", "<leader>fw", builtin.live_grep, {})

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

map("n", "<leader>ah", mark.add_file)
map("n", "<C-e>", ui.toggle_quick_menu)

map("n", "<leader>1", function()
    ui.nav_file(1)
end)
map("n", "<leader>2", function()
    ui.nav_file(2)
end)
map("n", "<leader>3", function()
    ui.nav_file(3)
end)
map("n", "<leader>4", function()
    ui.nav_file(4)
end)
map("n", "<leader>5", function()
    ui.nav_file(5)
end)
map("n", "<leader>6", function()
    ui.nav_file(6)
end)
map("n", "<leader>7", function()
    ui.nav_file(7)
end)
map("n", "<leader>8", function()
    ui.nav_file(8)
end)
map("n", "<leader>9", function()
    ui.nav_file(9)
end)
map("n", "<leader>0", function()
    ui.nav_file(10)
end)

-- Blame
map("n", "<leader>gb", vim.cmd.ToggleBlame)
