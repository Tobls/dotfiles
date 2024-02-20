vim.g.mapleader = " "

-- Remap files key
vim.keymap.set("n", "<leader>pf", vim.cmd.Ex)

-- Allow CTRL-C to esc
vim.keymap.set("i", "<C-c>", "<ESC>")

-- Move selected blocks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move half page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor centered when cycling through search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy and Paste to system clipboard
vim.keymap.set({"n", "v"}, "y", [["+y]])
vim.keymap.set("n", "Y", [["+Y]])
vim.keymap.set({"n", "v"}, "p", [["+p]])
vim.keymap.set("n", "P", [["+P]])

-- Delete to clipboard
vim.keymap.set({"n", "v"}, "D", [["+D]])
vim.keymap.set({"n", "v"}, "d", [["+d]])

-- Quickfix mavigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>wl", "<C-w><Right>")
vim.keymap.set("n", "<leader>wh", "<C-w><Left>")
vim.keymap.set("n", "<leader>wj", "<C-w><Down>")
vim.keymap.set("n", "<leader>wk", "<C-w><Up>")

-- Open undotree
vim.keymap.set("n", "<leader>u", function ()
    vim.cmd.UndotreeToggle()
    vim.cmd.UndotreeFocus()
end)

-- Open File Tree
vim.keymap.set("n", "<leader>b", "<cmd>NvimTreeToggle<cr>")
