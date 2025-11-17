vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Better Colemak-DH movement
vim.keymap.set('n', 'n', 'j', { noremap = true })
vim.keymap.set('n', 'e', 'k', { noremap = true })
vim.keymap.set('n', 'i', 'l', { noremap = true })

-- You probably want this too, so visual mode doesn't betray you
vim.keymap.set('v', 'n', 'j', { noremap = true })
vim.keymap.set('v', 'e', 'k', { noremap = true })
vim.keymap.set('v', 'i', 'l', { noremap = true })

-- Operator-pending mode (motions after d, c, y, etc.)
vim.keymap.set('o', 'n', 'j', { noremap = true })
vim.keymap.set('o', 'e', 'k', { noremap = true })
vim.keymap.set('o', 'i', 'l', { noremap = true })

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<leader><Esc>', ':nohlsearch <CR>', { desc = 'Unhighlight' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics' })
vim.keymap.set('n', '<C-s>', ':w <CR>')
vim.keymap.set('n', '<leader>e', ':Neotree toggle <CR>', { desc = 'Open neotree' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next find' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous find' })
vim.keymap.set('n', '<Tab>', ':bnext <CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious <CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>x', ':bdelete! <CR>', { desc = 'Delete buffer' })
vim.keymap.set('n', '<leader>X', ':%bd|e#|bd# <CR>', { desc = 'Delete all buffer but active' })
vim.keymap.set('n', '<C-k>', ':wincmd k <CR>', { desc = 'Move to split up' })
vim.keymap.set('n', '<C-j>', ':wincmd j <CR>', { desc = 'Move to split down' })
vim.keymap.set('n', '<C-h>', ':wincmd h <CR>', { desc = 'Move to split left' })
vim.keymap.set('n', '<C-l>', ':wincmd l <CR>', { desc = 'Move to split right' })
vim.keymap.set('n', '<leader>w', '<cmd>set wrap! <CR>', { desc = 'Toggle line wrap' })

-- Telescope
vim.keymap.set('n', '<leader>sf', ':Telescope find_files <CR>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>sg', ':Telescope live_grep <CR>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>sr', ':Telescope resume <CR>', { desc = 'Resume' })
vim.keymap.set('n', '<leader><leader>', ':Telescope buffers <CR>', { desc = 'Buffers' })

-- LSP
vim.keymap.set('n', '<leader>n', vim.lsp.buf.rename, { desc = 'Rename' })
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { desc = 'Goto Code Action' })
vim.keymap.set('n', '<leader>r', ':Telescope lsp_references <CR>', { desc = 'Goto References' })
vim.keymap.set('n', '<leader>i', ':Telescope lsp_implementations <CR>', { desc = 'Goto Implementation' })
vim.keymap.set('n', '<leader>d', ':Telescope lsp_definitions <CR>', { desc = 'Goto Definition' })

-- Git
vim.keymap.set('n', 'ga', ':term git adog <CR>', { desc = 'Git adog' })
vim.keymap.set('n', 'gs', ':term git status <CR>', { desc = 'Git status' })
vim.keymap.set('n', 'gd', ':Gvdiffsplit <CR>', { desc = 'Git diff' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP')
