return { -- Fuzzy Finder (files, lsp, etc)
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    dependencies = {
        --"nvim-lua/plenary.nvim"
        "nvim-telescope/telescope-ui-select.nvim"
    },
    config = function()
        require("telescope").setup({
            defaults = {
                sorting_strategy = "ascending",
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown(),
                },
            },
        })

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
        vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
        vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
        vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
        vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
        vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

        vim.keymap.set("n", "<leader>sg",
            function()
                builtin.live_grep({
                    sorter = require("telescope.sorters").get_generic_fuzzy_sorter()
                })
            end,
            { desc = "[S]earch by [G]rep" }
        )
        vim.keymap.set("n", "<leader>/",
            function()
                builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                    winblend = 10,
                    previewer = false,
                }))
            end,
            { desc = "[/] Fuzzily search in current buffer" }
        )
    end,
}
