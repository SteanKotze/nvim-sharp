require("options")
require("keymaps")
require("commands")
require("lazy_setup")
require("lazy").setup({
    require("plugins.lazy_dev"),
    require("plugins.theme"),
    require("plugins.todo_comments"),
    require("plugins.blink"),           -- automcompletion
    require("plugins.lsp"),             -- language server protocol
    require("plugins.tiny_code_actions"),
    require("plugins.git"),             -- git signs
    require("plugins.which_key"),       -- cute ui for <leader> and stuffs
    require("plugins.telescope"),       -- for finding stuff
    require("plugins.multi_cursor"),    -- for multi cursor
    require("plugins.vim_fugitive")
}, {})


--bruh this one hella comment
