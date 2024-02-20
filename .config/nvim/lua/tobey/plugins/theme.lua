return {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        local theme = require("kanagawa")

        theme.setup({
            colors = {
            },
            overrides = function(colors)
                local t= colors.theme
                return {
                    NormalFloat = { bg = "none" },
                    FloatBorder = { bg = "none" },
                    FloatTitle = { bg = "none" },

                    -- Save an hlgroup with dark background and dimmed foreground
                    -- so that you can use it where your still want darker windows.
                    -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
                    NormalDark = { fg = t.ui.fg_dim, bg = t.ui.bg_m3 },

                    -- Popular plugins that open floats will link to NormalFloat by default;
                    -- set their background accordingly if you wish to keep them dark and borderless
                    LazyNormal = { bg = t.ui.bg_m3, fg = t.ui.fg_dim },
                    MasonNormal = { bg = t.ui.bg_m3, fg = t.ui.fg_dim },
                }
            end,
        })

        -- Set colorscheme after options
        vim.cmd.colorscheme("kanagawa")
    end,
}
