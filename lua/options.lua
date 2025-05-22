-- STEP: (2) Set vim config
vim.o.number = true --		option : line numbers
vim.opt.relativenumber = true
vim.o.showmode = true --	option : show current nvim mode
vim.o.undofile = true --	option : save undo history

vim.o.breakindent = true --	option : idk - helps with indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.o.inccommand = "split"

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 20

-- dialog on fail of command
vim.o.confirm = true

vim.o.clipboard = "unnamedplus"     -- option: sync clipboard between OS and nvim

vim.g.icons_enabled = false
vim.g.have_nerd_font = false
