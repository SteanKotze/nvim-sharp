require("options")
require("keymaps")
require("commands")
require("lazy_setup")
require("lazy").setup({
    require("plugins.lsp"),
    require("plugins.git"),
    require("plugins.which_key"),
    require("plugins.telescope"),
    require("plugins.lazy_dev"),
    require("plugins.blink"),
    require("plugins.theme"),
    require("plugins.todo_comments"),
    require("plugins.tree_sitter"),
    require("plugins.mini"),
    require("plugins.multi_cursor")
}, {})
