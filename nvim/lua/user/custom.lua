-- Custom Plugins

return {
  { '0x00-ketsu/autosave.nvim' },

  -- ToggleTerm
  { 'akinsho/toggleterm.nvim',      version = "*", config = true },

  -- NvimTree
  { 'nvim-tree/nvim-tree.lua' },

  -- Hop
  { 'phaazon/hop.nvim' },

  -- Trouble
  -- pretty list for showing diagnostics, references, telescope results, quickfix and location lists
  { 'folke/trouble.nvim' },

  -- Go-To
  -- for previewing native LSP's goto definition, type definition
  { 'rmagatti/goto-preview' },

  -- Symbols Outline
  -- A tree like view for symbols in Neovim using the Language Server Protocol
  { 'simrat39/symbols-outline.nvim' },

  -- Specter (Search and Replace)
  -- A search panel for neovim
  { 'nvim-pack/nvim-spectre' },

  -- Friendly Snippets
  { 'rafamadriz/friendly-snippets' },

  -- Surround nvim
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },

  -- Vim move
  { 'matze/vim-move' },

  -- Dashboard
  { 'goolord/alpha-nvim' },

  -- Dev-Icons
  { 'nvim-tree/nvim-web-devicons' },

  -- Autoclose
  { 'm4xshen/autoclose.nvim' },

  { 'nvim-telescope/telescope-media-files.nvim' },

  { 'kkharji/sqlite.lua' }
}
