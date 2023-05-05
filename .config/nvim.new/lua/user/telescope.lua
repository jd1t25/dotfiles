require("telescope").setup({
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		-- vimgrep_arguments = {
  --     'rg',
  --     '--color=never',
  --     '--no-heading',
  --     '--with-filename',
  --     '--line-number',
  --     '--column',
  --     '--smart-case',
  --     '--hidden',
		-- 	'--glob=!git/*',
		-- 	'--glob=!.rustup/*',
  --   },
		mappings = {
			i = {
				-- map actions.which_key to <C-h> (default: <C-/>)
				-- actions.which_key shows the mappings for your picker,
				-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				["<C-h>"] = "which_key",
				["JK"] = "close",
			},
			n = {
				["JK"] = "close",
			},
		},
	},
	pickers = {
		-- find_command = "rg,--ignore,--hidden,--files prompt_prefix=🔍";
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
	},
	extensions = {
		 fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
		-- fzf = {
		-- 	fuzzy = true, -- false will only do exact matching
		-- 	override_generic_sorter = true, -- override the generic sorter
		-- 	override_file_sorter = true, -- override the file sorter
		-- 	case_mode = "smart_case", -- or "ignore_case" or "respect_case"
		-- 	-- the default case_mode is "smart_case"
		-- },
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure
	},
})

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- require("telescope").load_extension("fzf")
require("telescope").load_extension("media_files")
require('telescope').load_extension('fzy_native')
