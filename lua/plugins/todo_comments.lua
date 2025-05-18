return { -- SET: Comment highlights
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        signs = false,
        keywords = {
            STEP = {
                -- STEP: 1- test
                icon = "",
                color = "info",
            },
            option = {
                -- option: test
                icon = "",
                color = "color_option",
            },
        },
        colors = {
            color_option = { "Identifier", "#ABB910" },
            color_region = { "Identifier", "#b98610" },
        },
        highlight = {
            command = "rg",
            pattern = [[.*<(KEYWORDS)\s*:?]],
        },
        search = {
            command = "rg",
            pattern = [[\b(KEYWORDS)(:|\b)]],
        }
    },
}
