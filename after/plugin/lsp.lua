vim.g.mapleader = " "

local lspconfig = vim.lsp.config

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', opts)
        vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', opts)
        vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', '<leader>lr', '<cmd>LspRestart<CR>', opts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

        -- autoformat on save
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = event.buf,
                callback = function()
                    vim.lsp.buf.format({ buffer = event.buf })
                end
            })
        end
    end
})

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        function(server_name)
            lspconfig.server_name.setup({})
        end,
    },
})


vim.lsp.config('pyright', {
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

vim.lsp.config('emmet_ls', {
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
vim.lsp.config('emmet_ls', {
    cmd = { 'emmet_ls' },
    filetypes = { "css", "templ", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug",
        "typescriptreact",
        "vue" }
})
vim.lsp.enable('emmet_ls')

vim.lsp.config('tailwindcss', {
    filetypes = { "templ", "html", "javascriptreact", "typescriptreact" }
})
vim.lsp.enable('tailwindcss')

vim.lsp.config('arduino_language_server', {
    cmd = {
        "arduino-language-server",
        "-cli-config", "/home/leyban/.arduino15/arduino-cli.yaml",
        "-fqbn", "arduino:avr:uno",
        "-cli", vim.fn.exepath("arduino-cli"),
        "-clangd", vim.fn.exepath("clangd"),
    }
})
vim.lsp.enable('arduino_language_server')

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
