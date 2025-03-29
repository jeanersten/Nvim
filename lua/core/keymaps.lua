vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opts = { noremap = true, silent = true }

-- Saving and Quitting
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<CMD> w <CR>", opts)
vim.keymap.set({ "n", "i", "v" }, "<C-S>", "<CMD> wa <CR>", opts)
vim.keymap.set("n", "<C-q>", "<CMD> q <CR>", opts)

-- Scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Searching
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Sizing
vim.keymap.set("n", "<Up>", "<CMD> horizontal resize +1 <CR>", opts)
vim.keymap.set("n", "<Down>", "<CMD> horizontal resize -1 <CR>", opts)
vim.keymap.set("n", "<Right>", "<CMD> vertical resize +1 <CR>", opts)
vim.keymap.set("n", "<Left>", "<CMD> vertical resize -1 <CR>", opts)

-- Windows
vim.keymap.set("n", "<leader>wh", "<C-w>s", opts)
vim.keymap.set("n", "<leader>wv", "<C-w>v", opts)
vim.keymap.set("n", "<leader>we", "<C-w>=", opts)
vim.keymap.set("n", "<leader>wx", "<CMD> close <CR>", opts)
vim.keymap.set("n", "<M-k>", "<CMD> wincmd k <CR>", opts)
vim.keymap.set("n", "<M-j>", "<CMD> wincmd j <CR>", opts)
vim.keymap.set("n", "<M-l>", "<CMD> wincmd l <CR>", opts)
vim.keymap.set("n", "<M-h>", "<CMD> wincmd h <CR>", opts)

-- Buffers and Tabs
vim.keymap.set("n", "<leader>tc", "<CMD> tabnew <CR>", opts)
vim.keymap.set("n", "<leader>tx", "<CMD> tabclose <CR>", opts)
vim.keymap.set("n", "<leader>tn", "<CMD> tabn <CR>", opts)
vim.keymap.set("n", "<leader>tp", "<CMD> tabp <CR>", opts)
vim.keymap.set("n", "<leader>bc", "<CMD> enew <CR>", opts)
vim.keymap.set("n", "<leader>bx", "<CMD> Bdelete! <CR>", opts)
vim.keymap.set("n", "<Tab>", "<CMD> bnext <CR>", opts)
vim.keymap.set("n", "<S-Tab>", "<CMD> bprevious <CR>", opts)

-- Terminal
vim.keymap.set({ "n", "t" }, "<M-t>", "<cmd> ToggleTerm <CR>", opts)
vim.keymap.set("t", "df", [[<C-\><C-n>]], opts)

-- Explore
vim.keymap.set("n", "<leader>se", "<CMD> Telescope file_browser <CR>", opts)
vim.keymap.set("n", "<leader>sf", "<CMD> Telescope find_files <CR>", opts)
vim.keymap.set("n", "<leader>sg", "<CMD> Telescope live_grep <CR>", opts)
vim.keymap.set("n", "<leader>sb", "<CMD> Telescope buffers <CR>", opts)
vim.keymap.set("n", "<leader>sh", "<CMD> Telescope help_tags <CR>", opts)

-- Language Server Protocol
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "<leader>d", vim.lsp.buf.type_definition, opts)
vim.keymap.set("n", "<leader>ds", vim.lsp.buf.document_symbol, opts)
vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

-- Formatter
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, opts)

-- Diagnostics
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<leader>cf", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "<leader>cl", vim.diagnostic.setloclist, opts)

-- Miscellaneous
vim.keymap.set("n", ";", ":", {})
vim.keymap.set("i", "df", "<ESC>", {})
vim.keymap.set("n", "x", '"_x', opts)
vim.keymap.set("v", "p", '"_dgP', opts)
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set("n", "<leader>sn", "<CMD> noautocmd w <CR>", opts)
vim.keymap.set({ "n", "v" }, "J", "<Nop>", opts)
vim.keymap.set({ "n", "v" }, "K", "<Nop>", opts)
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", opts)
vim.keymap.set("n", "<leader>lw", "<CMD> set wrap! <CR>", opts)
