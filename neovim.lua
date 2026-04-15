--  .-^~^-. \/ .-^~^-. \\ `-._.-` // .-^~^-. \/ .-^~^-.
-- |                                                   |
-- |   ,---.          ,--.                             |
-- |  '   .-'  ,--,--.|  |,-.,--.,--.,--.--. ,--,--.   |
-- |  `.  `-. ' ,-.  ||     /|  ||  ||  .--'' ,-.  |   |
-- |  .-'    |\ '-'  ||  \  \'  ''  '|  |   \ '-'  |   |
-- |  `-----'  `--`--'`--'`--'`----' `--'    `--`--'   |
-- |                 . .         . .                   |
-- |               .-^~^-.     .-^~^-.                 |
-- |               `-._.-'     `-._.-'                 |
-- |                  |           |                    |
-- |     ,--.   ,--.             ,--.     ,--.         |
-- |     |   `.'   | ,---.  ,---.|  ,---. `--'         |
-- |     |  |'.'|  || .-. || .--'|  .-.  |,--.         |
-- |     |  |   |  |' '-' '\ `--.|  | |  ||  |         |
-- |     `--'   `--' `---'  `---'`--' `--'`--'         |
-- |                                                   |
--  .-^~^-. \/ .-^~^-. \\ `-._.-` // .-^~^-. \/ .-^~^-.

return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
				-- Background colors
				bg = "#0b0d11",
				bg_dark = "#0b0d11",
				bg_highlight = "#6f9485",

				-- Foreground colors
				-- fg: Object properties, builtin types, builtin variables, member access, default text
				fg = "#f0b7ca",
				-- fg_dark: Inactive elements, statusline, secondary text
				fg_dark = "#d8c6cc",
				-- comment: Line highlight, gutter elements, disabled states
				comment = "#4a5d46",

				-- Accent colors
				-- red: Errors, diagnostics, tags, deletions, breakpoints
				red = "#f23888",
				-- orange: Constants, numbers, current line number, git modifications
				orange = "#d7be96",
				-- yellow: Types, classes, constructors, warnings, numbers, booleans
				yellow = "#d7be96",
				-- green: Comments, strings, success states, git additions
				green = "#5aa15d",
				-- cyan: Parameters, regex, preprocessor, hints, properties
				cyan = "#6f9485",
				-- blue: Functions, keywords, directories, links, info diagnostics
				blue = "#67dd82",
				-- purple: Storage keywords, special keywords, identifiers, namespaces
				purple = "#ffd0dc",
				-- magenta: Function declarations, exception handling, tags
				magenta = "#ff6aa7",
			},
			on_highlights = function(hl, c)
				hl["@constant.builtin"] = { fg = c.orange }
				hl["@keyword.function"] = { fg = c.magenta, bold = true }
				hl["@module"] = { fg = c.purple }
				hl["@property"] = { fg = c.fg_dark }
				hl["@type.builtin"] = { fg = c.blue }
				hl["@variable.member"] = { fg = c.fg_dark }

				hl["@lsp.type.class"] = { fg = c.yellow }
				hl["@lsp.type.interface"] = { fg = c.yellow }
				hl["@lsp.type.namespace"] = { fg = c.purple }
				hl["@lsp.type.parameter"] = { fg = c.cyan, italic = true }
				hl["@lsp.type.property"] = { fg = c.fg_dark }
				hl["@lsp.type.struct"] = { fg = c.yellow }
				hl["@lsp.type.type"] = { fg = c.yellow }
				hl["@lsp.type.typeParameter"] = { fg = c.blue }
			end,
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}

--   ____  __   __
--  / __ \/ /__/ /
-- / /_/ / / _  /
-- \____/_/\_,_/
--      __     __        __
--  __ / /__  / /  ___  / /  ___
-- / // / _ \/ _ \/ _ \/ _ \/ _ \
-- \___/\___/_.__/\___/_.__/\___/
--
