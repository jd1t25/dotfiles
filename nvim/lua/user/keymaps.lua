-- [[ Basic Keymaps ]]

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

-- Keymaps for better default experience
-- See `:help keymap()`
-- keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("n", "JJ", "<cmd>:w<cr>", opts)
keymap("i", "JJ", "<cmd>:w<cr>", opts)
keymap("n", "JK", "<cmd>:qa!<cr>", opts)
keymap("i", "JK", "<cmd>:qa!<cr>", opts)
keymap("n", "KJ", "<cmd>:q!<cr>", opts)

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
keymap("n", "c", '"_c', opts)
keymap("v", "c", '"_c', opts)

-- Replace word with copy word
-- keymap("n", "<leader>rr", "ciw<C-r>0<Esc>", opts)

-- Telescope
-- keymap("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", opts)
-- keymap("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", opts)
-- keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
-- keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
-- keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
-- keymap("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", opts)
-- keymap("n", "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
-- keymap("n", "<leader>km", "<cmd>Telescope keymaps<cr>", opts)

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })


-- ToggleTerm
keymap("n", "<leader>tt", "<cmd>ToggleTerm<cr>", opts)
keymap("t", "<esc>", [[<C-\><C-n>]], opts)
keymap("t", "JK", "<cmd>:q<cr>", opts)
keymap("n", "<C-Enter>", "<cmd>:TermExec cmd='python3 %'<cr>", nmap)
-- keymap("n", "<C-Enter>", "<cmd>:TermExec go_back=0 cmd='python3 %'<cr>", nmap)
-- keymap("t", "<leader>rr", "<cmd><C-\><C-n>:TermExec go_back=0 cmd='python3 %'<cr>", nmap)

-- Trouble
keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)

-- Go To Preview
keymap("n", "gpd", "require('goto-preview').goto_preview_definition()<CR>", opts)
keymap("n", "gpt", "require('goto-preview').goto_preview_type_definition()<CR>", opts)
keymap("n", "gpi", "require('goto-preview').goto_preview_implementation()<CR>", opts)
keymap("n", "gP", "require('goto-preview').close_all_win()<CR>", opts)
keymap("n", "gpr", "require('goto-preview').goto_preview_references()<CR>", opts)

-- Symbols Outline
keymap("n", "<leader>so", "<cmd>SymbolsOutline<cr>", opts)
-- keymap("i", "<leader>so", "<cmd>SymbolsOutline<cr>", opts)

-- Spectre (Search and Replace)
keymap('n', '<leader>S', '<cmd>lua require("spectre").open()<CR>', {
  desc = "Open Spectre"
})
keymap('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word"
})
keymap('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word"
})
keymap('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file"
})

-- Hop
keymap("n", "<leader>hl", "<cmd>HopLine<cr>", opts)
keymap("n", "<leader>hp", "<cmd>HopPattern<cr>", opts)
keymap("n", "<leader>hw", "<cmd>HopWord<cr>", opts)
keymap("n", "<leader>hc", "<cmd>HopChar1<cr>", opts)

-- Source / Execute
keymap("n", "<leader>xx", "<cmd>source %<CR>", opts)

-- Copy current line and Paste to next line
keymap("n", "<A-J>", "<cmd>:t .<cr>", opts)
keymap("i", "<A-J>", "<cmd>:t .<cr>", opts)