local Plugin = { 'ibhagwan/fzf-lua' }

Plugin.dependencies = {
	{ "nvim-tree/nvim-web-devicons" },
}
function Plugin.config()
	require("fzf-lua").setup{
		-- MISC GLOBAL SETUP OPTIONS, SEE BELOW
		-- fzf_bin = ...,
		-- winopts = { ...  },     -- UI Options
		keymap = {
			-- Below are the default binds, setting any value in these tables will override
			-- the defaults, to inherit from the defaults change [1] from `false` to `true`
		},

		-- actions = { ...  },     -- Fzf "accept" binds
		-- fzf_opts = { ...  },    -- Fzf CLI flags
		-- fzf_colors = { ...  },  -- Fzf `--color` specification
		-- hls = { ...  },         -- Highlights
		-- previewers = { ...  },  -- Previewers options
		-- SPECIFIC COMMAND/PICKER OPTIONS, SEE BELOW
		-- files = { ... },
	}

end

return Plugin
