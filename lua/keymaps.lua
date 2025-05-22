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
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })

-- Custom keybinds
vim.keymap.set(
    "n",
    "<leader>em",
    function()
        vim.cmd('bd')
        vim.cmd('Ex')
    end,
    {
        noremap = true,
        silent = true,
        desc = "Clear buffer and exit to Explorer"
    }
)
vim.keymap.set(
    "n",
    "<leader>eb",
    function()
        vim.cmd('bd')
    end,
    {
        noremap = true,
        silent = true,
        desc = "Clear buffer"
    }
)
