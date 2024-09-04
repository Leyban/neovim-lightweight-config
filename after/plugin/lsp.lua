local lsp = require('lsp-zero')

vim.g.mapleader = " "
lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat()

    local opts = { buffer = bufnr }

    -- definition navigation
    vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', opts)

    -- diagnostics
    vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>')

    -- restart lsp
    vim.keymap.set('n', '<leader>lr', '<cmd>LspRestart<CR>')
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

local lspconfig = require('lspconfig')
lspconfig.pyright.setup {
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
}

lsp.setup()
