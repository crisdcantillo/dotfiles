vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<leader><Esc>', ':nohlsearch <CR>', { desc = 'Unhighlight' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics' })
vim.keymap.set('n', '<C-s>', ':w <CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>e', ':Lexplore 20<CR>', { desc = 'Open Netrw' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next find' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous find' })
vim.keymap.set('n', '<leader><leader>', ':buffers <CR>', { desc = 'List of buffers' })
vim.keymap.set('n', '<Tab>', ':bnext <CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious <CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>x', ':bdelete! <CR>', { desc = 'Delete buffer' })
vim.keymap.set('n', '<leader>w', '<cmd>set wrap! <CR>', { desc = 'Toggle line wrap' })

-- Navigate splits
vim.keymap.set("n", "<C-Left>", "<C-w>h")
vim.keymap.set("n", "<C-Down>", "<C-w>j")
vim.keymap.set("n", "<C-Up>", "<C-w>k")
vim.keymap.set("n", "<C-Right>", "<C-w>l")

-- Resize splits
vim.keymap.set("n", "<C-S-Up>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<C-S-Down>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<C-S-Left>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<C-S-Right>", "<cmd>vertical resize +2<CR>")

--- Telescope
vim.keymap.set('n', '<leader>sf', ':Telescope find_files <CR>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>sg', ':Telescope live_grep <CR>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>sr', ':Telescope resume <CR>', { desc = 'Resume' })
vim.keymap.set('n', '<leader><leader>', ':Telescope buffers <CR>', { desc = 'Buffers' })

-- LSP
vim.keymap.set('n', '<leader>n', vim.lsp.buf.rename, { desc = 'Rename' })
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { desc = 'Goto Code Action' })
vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, { desc = 'Goto References' })
vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, { desc = 'Goto Definition' })

-- Git
vim.keymap.set('n', 'ga', ':term git adog <CR>', { desc = 'Git adog' })
vim.keymap.set('n', 'gs', ':term git status <CR>', { desc = 'Git status' })
vim.keymap.set('n', 'gd', ':term git diff <CR>', { desc = 'Git diff' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right' })

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', { desc = 'Paste' })
