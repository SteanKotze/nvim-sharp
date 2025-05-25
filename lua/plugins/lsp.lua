return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {}
        },
        "mason-org/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
            callback = function(event)
                vim.keymap.set("n", "grn", vim.lsp.buf.rename, { buffer = event.buf, desc = "[R]e[n]ame Variable" })
            end,
        })

        local capabilities = require("blink.cmp").get_lsp_capabilities()
        local language_servers = {
            lua_ls = {
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Replace",
                        },
                    },
                },
            },
        }

        local ensure_installed = vim.tbl_keys(language_servers or {})
        vim.list_extend(ensure_installed, {
            "omnisharp"
        })
        require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

        require("mason").setup()
        require("mason-lspconfig").setup({
            automatic_installation = true,
            automatic_enable = true,
            ensure_installed = {
               "omnisharp"
            },
            handlers = {
                function(server_name)
                    local language_server = language_servers[server_name] or {}
                    language_server.capabilities =
                        vim.tbl_deep_extend("force", {}, capabilities, language_server.capabilities or {})
                    require("lspconfig")[server_name].setup(language_server)
                end,
            },
        })
    end,
}
