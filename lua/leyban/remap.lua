vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>nt", "<cmd>Neotree<CR>")

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

-- show error
vim.keymap.set("n", "<C-k>", vim.diagnostic.open_float)
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- some that are familiar
vim.keymap.set("x", "<tab>", ">>")
vim.keymap.set("x", "<S-tab>", "<<")

vim.keymap.set("n", "<CR>", "o<esc>")
vim.keymap.set("n", "<S-CR>", "i<CR><esc>")

vim.keymap.set("n", "<A-Up>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<A-Down>", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "<A-Left>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<A-Right>", " <cmd>wincmd l<CR>")

vim.keymap.set("i", "<C-H>", " <esc>vbc")

-- debugging keymaps
vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F6>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<r7>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<r8>", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
vim.keymap.set("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>")
vim.keymap.set("n", "<F9>", ":lua require'dap'.close()<CR>")
vim.keymap.set("n", "<F12>", ":lua require'dap'.close()<CR> :lua require'dapui'.close()<CR>")

-- trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
