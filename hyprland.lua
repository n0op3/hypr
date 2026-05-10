require("config.lua")
require("env.lua")
require("nvidia.lua")
require("windowrules.lua")
require("decorations.lua")
require("animations.lua")
require("monitors.lua")
require("binds.lua")
require("input.lua")
require("startup.lua")

hl.config({
    general = {
        layout = "dwindle"
    },
    cursor = {
        no_warps = false,
        inactive_timeout = 0.1,
        hide_on_key_press = true,
        sync_gsettings_theme = true,
        no_hardware_cursors = false,
    },
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = false,
        mouse_move_enables_dpms = true,
        vfr = true,
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
