local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

require("harpoon").setup({
    tabline = true
})

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-h>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-h>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-h>4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<C-h>5", function() ui.nav_file(5) end)
vim.keymap.set("n", "<C-h>6", function() ui.nav_file(6) end)
vim.keymap.set("n", "<C-h>7", function() ui.nav_file(7) end)
vim.keymap.set("n", "<C-h>8", function() ui.nav_file(8) end)
vim.keymap.set("n", "<C-h>9", function() ui.nav_file(9) end)

vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')
