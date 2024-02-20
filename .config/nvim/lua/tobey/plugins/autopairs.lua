return {
    'windwp/nvim-autopairs',
    dependencies = {
        'windwp/nvim-ts-autotag',
        "hrsh7th/nvim-cmp",
    },
    config = function ()
        local autopairs = require("nvim-autopairs")
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")

        autopairs.setup({
            check_ts = true,
            ts_config = {
                lua = { "string" },
                javascript = { "template_string" },
                java = false
            }
        })

        -- make autopairs and completion work together
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
}
