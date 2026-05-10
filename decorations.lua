local color2 = rgb(000000)

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 3,
        resize_on_border = true,
        border_size = 2,
        col = {
            active_border = { colors = { color6, color5 } },
            inactive_border = rgba(00000000)
        },
    },

    decoration = {
        rounding = 12,
        active_opacity = 0.95,
        inactive_opacity = 0.85,

        blur = {
            enabled = true,
            size = 4,
            passes = 2,
            new_optimizations = true,
            xray = false,
            ignore_opacity = true,
        },

        shadow = {
            enabled = false,
            ignore_window = true,
            offset = { 0, 0 },
            range = 10,
            render_power = 5,
            color = 0x88404040,
        }
    }
})
