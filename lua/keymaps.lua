--	STEP: (1) Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>")

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "meow"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "beep"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "boop"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "woof"<CR>')

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<leader>gh", "<C-w>h", { desc = "[G]o to the left window" })
vim.keymap.set("n", "<leader>gl", "<C-w>l", { desc = "[G]o to the right window" })
vim.keymap.set("n", "<leader>gj", "<C-w>j", { desc = "[G]o to the lower window" })
vim.keymap.set("n", "<leader>gk", "<C-w>k", { desc = "[G]o to the upper window" })

-- Custom keybinds
vim.keymap.set(
    "n", "<leader>em",
    function()
        vim.cmd('bd')
        vim.cmd('Ex')
    end,
    {
        desc = "Clear buffer and exit to Explorer",
        noremap = true,
        silent = true,
    }
)
vim.keymap.set(
    "n", "<leader>en",
    function()
        vim.cmd('Ex')
    end,
    {
        desc = "[E]xit to explorer o[N]ly",
        noremap = true,
        silent = true,
    }
)
vim.keymap.set(
    "n", "<leader>eb",
    function()
        vim.cmd('bd')
    end,
    {
        desc = "Clear buffer",
        noremap = true,
        silent = true,
    }
)
vim.keymap.set(
    "n", "<leader>od",
    function()
        vim.diagnostic.open_float()
    end,
    {
        desc = "[O]pen [D]iagnostics",
        noremap = true,
        silent = true
    }
)
vim.keymap.set(
    "n", "<leader>gdv",
    ":Gdiffsplit<CR>",
    {
        desc = "[G]it [D]iff [V]ertically",
        noremap = true,
        silent = true
    }
)
vim.keymap.set(
    "n", "<leader>oa",
    function()
        require("tiny-code-action").code_action()
    end,
    {
        desc = "[O]pen Code [A]ctions",
        noremap = true,
        silent = true
    }
)

vim.keymap.set(
    "n",
    "<leader>vs",
    ":vertical resize 50<CR>",
    { silent = true }
)

vim.keymap.set(
    "n", "<leader>vlf",
    function()
        vim.cmd('vs')
        require("telescope.builtin").find_files()
    end,
    {
        desc = "[V]ertical split (L)right and [Find] new file",
        noremap = true,
        silent = true,
    }
)
vim.keymap.set(
    "n", "<leader>vlg",
    function()
        vim.cmd('vs')
        require("telescope.sorters").live_grep({
            sorter = require("telescope.sorters").get_generic_fuzzy_sorter()
        })
    end,
    {
        desc = "[V]ertical split (L)right and [G]rep",
        noremap = true,
        silent = true,
    }
)
vim.keymap.set(
    "n", "<leader>vhf",
    function()
        vim.cmd('vs')
        vim.cmd("wincmd h")
        require("telescope.builtin").find_files()
    end,
    {
        desc = "[V]ertical split (H)left and [Find] new file",
        noremap = true,
        silent = true,
    }
)
vim.keymap.set(
    "n", "<leader>vjf",
    function()
        vim.cmd('sp')
        vim.cmd("wincmd j")
        require("telescope.builtin").find_files()
    end,
    {
        desc = "[V]ertical split (J)down and [Find] new file",
        noremap = true,
        silent = true,
    }
)
vim.keymap.set(
    "n", "<leader>vkf",
    function()
        vim.cmd('sp')
        vim.cmd("wincmd k")
        require("telescope.builtin").find_files()
    end,
    {
        desc = "[V]ertical split (K)up and [Find] new file",
        noremap = true,
        silent = true,
    }
)
vim.keymap.set(
    "n",
    "<leader>vl<leader>",
    function()
        vim.cmd('vs')
        vim.cmd("wincmd h")
        require("telescope.builtin").buffers()
    end,
    {
        desc = "[V]ertical split (L)right and open buffers",
        noremap = true,
        silent = true,
    }
)
vim.keymap.set(
    "n",
    "<leader>vh<leader>",
    function()
        vim.cmd('vs')
        require("telescope.builtin").buffers()
    end,
    {
        desc = "[V]ertical split (H)left and open buffers",
        noremap = true,
        silent = true,
    }
)
