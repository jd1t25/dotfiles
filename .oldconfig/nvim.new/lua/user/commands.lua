-- au BufEnter = * :Workspace TerminalBrowser New<CR>

-- local createAC = vim.api.nvim_create_autocmd
--
-- createAC("VimEnter", { command = "Workspace TerminalBrowser New<CR>", group=group }) -- vim.api.nvim_exec([[ Workspace TerminalBrowser New ]], false)


local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local nmap = { noremap = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- createAC("VimEnter", { command = "echo 'hello'", group=group })
--
-- vim.api.nvim_command([[
-- augroup AutoCompileLatex
-- 	autocmd VimEnter * :Workspace TerminalBrowser New
-- augroup END 
-- ]])
