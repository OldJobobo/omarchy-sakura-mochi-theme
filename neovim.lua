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
                bg = "#111721",
                bg_dark = "#111721",
                bg_highlight = "#4a5d46",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#f0b7ca",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#f0b7ca",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#4a5d46",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#f23888",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#f23888",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#d7be96",
                -- green: Comments, strings, success states, git additions
                green = "#5aa15d",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#6f9485",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#67dd82",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#f0b7ca",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#f0b7ca",
            },
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
