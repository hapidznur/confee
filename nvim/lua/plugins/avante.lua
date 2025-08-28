local Plugin = {'yetone/avante.nvim'}

Plugin.dependencies = {
	{'stevearc/dressing.nvim'},
	{'nvim-lua/plenary.nvim'},
	{'MunifTanjim/nui.nvim'},
    --- The below dependencies are optional,
	{'echasnovski/mini.icons'}, -- or echasnovski/mini.icons
	{'zbirenbaum/copilot.lua'},
	{'HakonHarnes/img-clip.nvim'},
	{'MeanderingProgrammer/render-markdown.nvim'},
	{'zbirenbaum/copilot.lua'} -- for providers='copilot'
}
function Plugin.config()
	require('avante_lib').load() 
	require('avante').setup ({
		-- Your config here!
		event = "VeryLazy",
		lazy = true,
		version = true, -- set this if you want to always pull the latest change
		provider = 'copilot',
  	auto_suggestions_provider = 'copilot',
		model = 'o1',
	  reasoning_effort = "high", -- only supported for reasoning models (o1, etc.)
		opts = {
			 -- provider = 'copilot',
		},
	})
	require('copilot').setup ({
		-- use recommended settings from above
		panel = {
			enabled = true,
			auto_refresh = false,
			keymap = {
				jump_prev = "[[",
				jump_next = "]]",
				accept = "<CR>",
				refresh = "gr",
				open = "<M-CR>"
			},
			layout = {
				position = "bottom", -- | top | left | right
				ratio = 0.4
			},
		},
		suggestion = {
			enabled = true,
			auto_trigger = true,
			hide_during_completion = true,
			debounce = 75,
			keymap = {
				accept = "<M-l>",
				accept_word = false,
				accept_line = false,
				next = "<M-]>",
				prev = "<M-[>",
				dismiss = "<C-]>",
			},
		},
		filetypes = {
			yaml = false,
			markdown = false,
			help = false,
			gitcommit = false,
			gitrebase = false,
			hgcommit = false,
			svn = false,
			cvs = false,
			["."] = false,
		},
		copilot_node_command = 'node', -- Node.js version must be > 18.x
		server_opts_overrides = {},
	})
  require('img-clip').setup ({
-- use recommended settings from above
  	event = "VeryLazy",
		opts = {
        -- recommended settings
       default = {
           embed_image_as_base64 = false,
           prompt_for_file_name = false,
           drag_and_drop = {
             insert_mode = true,
           },
           -- required for Windows users
           use_absolute_path = true,
         },
       },
    keys = {
    -- suggested keymap
     { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
   },
  })
 run = "make BUILD_FROM_SOURCE=true" -- Build command (use this if you build from source)
end

return Plugin
