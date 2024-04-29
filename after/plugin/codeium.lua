-- disable auto completion when using codeium
vim.g.codeium_no_map_tab = true
vim.g.codeium_manual = true

-- change accept
vim.keymap.set('i', '<M-y>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<M-Bslash>', function() return vim.fn['codeium#Complete']() end, { expr = true, silent = true })
