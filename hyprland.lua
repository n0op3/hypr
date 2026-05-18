Settings = { powersave = false };

require("env")
require("startup")
require("windowrules")
require("decorations")
require("animations")
require("monitors")
require("binds")
require("input")
require("nvidia")

hl.config({
    general = {
        layout = "dwindle"
    },
    cursor = {
        no_warps = false,
        inactive_timeout = 0.1,
        hide_on_key_press = true,
        sync_gsettings_theme = true,
    },
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        mouse_move_enables_dpms = true,
        vrr = 2,
        animate_manual_resizes = false,
        mouse_move_focuses_monitor = true,
        enable_swallow = true,
        swallow_regex = "^(kitty)$",
        middle_click_paste = false,
    },
    dwindle = {
        force_split = 2,
        preserve_split = true,
    },
    ecosystem = {
        no_update_news = true
    }
})
