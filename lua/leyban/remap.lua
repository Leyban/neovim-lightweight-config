vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>nt", "<cmd>Neotree reveal<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- the cure to paste alzheimers
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quick fix list
vim.keymap.set("n", "<C-q>", "<cmd>cclose<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- some that are familiar
vim.keymap.set("x", "<tab>", ">>")
vim.keymap.set("x", "<S-tab>", "<<")

-- vim.keymap.set("n", "<CR>", "o<esc>")

vim.keymap.set("n", "<A-Up>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<A-Down>", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "<A-Left>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<A-Right>", " <cmd>wincmd l<CR>")

vim.keymap.set("i", "<C-H>", " <esc>vbc")

-- trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle("diagnostics") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- quicksource
vim.keymap.set("n", "<F4>", ":so ~/.config/nvim/init.lua<cr>")
