local lsp = require('lsp-zero')
local lspconfig = vim.lsp.config

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
            lspconfig.server_name.setup({})
        end,
    },
})


lspconfig('pyright', {
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig('emmet_ls', {
    -- on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
        html = {
            options = {
                -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                ["bem.enabled"] = true,
            },
        },
    }
})
vim.lsp.enable('emmet_ls', {
    "css", "templ", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact",
    "vue"
})

vim.lsp.enable('tailwindcss', {
    "templ", "html", "jsx", "tsx"
})

local severity = vim.diagnostic.severity

vim.diagnostic.config({
    signs = {
        text = {
            [severity.ERROR] = " ",
            [severity.WARN] = " ",
            [severity.HINT] = "󰠠 ",
            [severity.INFO] = " ",
        },
    },
})

local orig = vim.lsp.buf.hover
vim.lsp.buf.hover = function()
    return orig({
        border = "solid",
    })
end

lsp.setup()
