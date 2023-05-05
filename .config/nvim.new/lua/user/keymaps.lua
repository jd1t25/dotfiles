local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local nmap = { noremap = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<leader>nn", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>pp", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)
keymap("i", "KK", "<cmd>:q<cr>", opts)
keymap("n", "KK", "<cmd>:q<cr>", opts)
keymap("t", "KK", "<cmd>:q<cr>", opts)
keymap("n", "JJ", "<cmd>:w<cr>", opts)
keymap("i", "JJ", "<cmd>:w<cr>", opts)
keymap("n", "JK", "<cmd>:xa<cr>", opts)
keymap("i", "JK", "<cmd>:xa<cr>", opts)
keymap("t", "JK", "<cmd>:xa<cr>", opts)
keymap("n", "KJ", "<cmd>:qa!<cr>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
--
-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Custom --

-- Delete instead of cut
keymap("n", "dd", '"_dd', opts)
keymap("v", "dd", '"_dd', opts)

-- Copy current line and Paste to next line
keymap("n", "<A-J>", "<cmd>:t .<cr>",opts)
keymap("i", "<A-J>", "<cmd>:t .<cr>",opts)

-- Replace word with copy word
-- keymap("n", "<leader>rr", "ciw<C-r>0<Esc>", opts)

-- Telescope
-- keymap("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", opts)
-- keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", opts)
keymap("n", "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
keymap("n", "<leader>km", "<cmd>Telescope keymaps<cr>", opts)

-- Terminal Browser
-- keymap("n", "<leader>tt", "<cmd>Workspace TerminalBrowser New<CR>",opts)
-- keymap("t", "<leader>th", "<cmd>Workspace Terminal Hide<CR>",opts)
-- keymap("n", "<leader>th", "<cmd>Workspace Terminal Hide<CR>",opts)
-- keymap("i", "<leader>th", "<cmd>Workspace Terminal Hide<CR>",opts)

-- Source / Execute
keymap("n","<leader>xx", "<cmd>source %<CR>",opts)

-- FTerm
-- keymap("n","<A-b>", "<cmd>lua require('FTerm').toggle()<CR>",opts)


-- ToggleTerm
keymap("n", "<leader>tt", "<cmd>ToggleTerm<cr>", opts)
keymap("t", "<esc>", [[<C-\><C-n>]], opts)
keymap("t", "JK", "<cmd>:q<cr>", opts)
keymap("n", "<leader>rr", "<cmd>:TermExec go_back=0 cmd='python3 %'<cr>", nmap)
keymap("t", "<leader>rr", "<cmd><C-><C-n>:TermExec go_back=0 cmd='python3 %'<cr>", nmap)



