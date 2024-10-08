local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fw', function()
    builtin.live_grep({
        default_text = vim.fn.expand('<cword>'),

    })
end)


-- vim.keymap.set('n', '<leader>ps', function()
--     builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)

-- vim.keymap.set('n', '<C-_>', function()
--     builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown())
-- end)
