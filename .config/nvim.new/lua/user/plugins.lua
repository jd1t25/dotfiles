local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	use("sheerun/vim-polyglot")
	use("kyazdani42/nvim-web-devicons")

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- LSP
	use("williamboman/mason.nvim") -- simple to use language server installer
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig") -- enable LSP

	-- Nvim IDE 
	use("ldelossa/nvim-ide") -- main ide plugin
	use("rcarriga/nvim-notify") -- vim notification
	use("dnlhc/glance.nvim") -- navigating and editing your LSP locations
	use("lewis6991/gitsigns.nvim") --git decorations

	-- Nvim Debugger 
	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")

	-- fzf-lua
	use { "ibhagwan/fzf-lua",
  -- optional for icon support
  requires = { "nvim-tree/nvim-web-devicons" }
	}
	
	-- fzy-lua-native
	use {
		"romgrk/fzy-lua-native"
	}

	-- Surround nvim
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
	})

	-- Dashboard
	use("goolord/alpha-nvim")

	-- Indent
	-- use("lukas-reineke/indent-blankline.nvim")

	-- Nvim Tree
	use("kyazdani42/nvim-tree.lua")

	-- Autoclose
	-- use("m4xshen/autoclose.nvim")

	-- Rainbow Brackets
	-- use("p00f/nvim-ts-rainbow")

	-- Nvim Colorizer
	use("NvChad/nvim-colorizer.lua")

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("nvim-telescope/telescope-fzy-native.nvim")
	use("nvim-telescope/telescope-media-files.nvim")
	use("kkharji/sqlite.lua")

	-- Vim Move
	use("matze/vim-move")

	-- Null-ls
	use("jose-elias-alvarez/null-ls.nvim")

	-- ToggleTerm
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	
	-- FTerm
	-- use "numToStr/FTerm.nvim"

	-- Comment
	use("numToStr/Comment.nvim")


	-- Hop
	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
	})

	-- Treesitter
use {
		"nvim-treesitter/nvim-treesitter",
		-- :TSUpdate[Sync] doesn't exist until plugin/nvim-treesitter is loaded (i.e. not after first install); call update() directly
		run = function() require("nvim-treesitter.install").update { with_sync = true } end
	}

	-- use({"nvim-reesitter/nvim-treesitter",
	-- 	run = function()
	-- 		require("nvim-treesitter.install").update({ with_sync = true })
	-- 	end,
	-- })
	use("nvim-treesitter/nvim-treesitter-textobjects")

	-- Fidget
	use("j-hui/fidget.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
