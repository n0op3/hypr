package.path = package.path .. ";" .. os.getenv("HOME") .. "/.cache/wal/colors.lua"

local ok, pywal = pcall(require, "colors")

if not ok then
    hl.exec_cmd("notify-send Hyprland 'Loading pywal colors failed'")
    pywal = { color6 = "#ffffff", color4 = "#7C0204" }
end

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 3,
        resize_on_border = true,
        border_size = 2,
        col = {
            active_border = { colors = { pywal.color6, pywal.color4 } },
            inactive_border = "rgba(00000000)"
        }
    },

    group = {
        groupbar = {
            keep_upper_gap = false,
            gradients = true,     -- filled background behind the title
            height = 20,          -- bar height, holds the text
            indicator_height = 0, -- or 2-3 if you still want a line
            text_offset = 0,      -- remove the hack
            gradient_rounding = State.rounding,
            text_color = pywal.color0,
            text_color_inactive = pywal.foreground,
            font_size = 12,
            col = {
                active = pywal.color1,
                inactive = pywal.color0
            }
        },
        col = {
            border_active = pywal.color1,
            border_inactive = pywal.color2
        }
    },

    decoration = {
        rounding = State.rounding,
        active_opacity = 0.85,
        inactive_opacity = 0.7,

        blur = {
            enabled = true,
            size = 3,
            passes = 2,
            new_optimizations = true,
            xray = false,
            ignore_opacity = true
        }
    }
})
