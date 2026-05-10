local cfg = require("config")

-- Sharing
hl.bind("Print", hl.dsp.exec_cmd(cfg.screenshot_full))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd(cfg.screenshot_area))
hl.bind("SUPER + ALT + SHIFT + S", hl.dsp.exec_cmd(cfg.screenshot_edit))

-- Misc
hl.bind("SUPER + ALT + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("SUPER + ALT + P", hl.dsp.exec_cmd("~/.config/hypr/scripts/powersave.sh"))
hl.bind("SUPER + SHIFT + X", hl.dsp.exec_cmd("hyprpicker | tr -d '\n' | wl-copy"))
hl.bind("SUPER + ALT + SEMICOLON", hl.dsp.exec_cmd(cfg.screen_lock))
hl.bind("SUPER + SHIFT + SEMICOLON", hl.dsp.exec_cmd(cfg.power_menu))
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(cfg.terminal))
hl.bind("SUPER + E", hl.dsp.exec_cmd(cfg.file_manager))
hl.bind("SUPER + W", hl.dsp.exec_cmd(cfg.browser))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(cfg.app_launcher))
hl.bind("SUPER + SHIFT + SPACE", hl.dsp.exec_cmd(cfg.config_switcher))
hl.bind("ALT + TAB", hl.dsp.exec_cmd(cfg.window_switcher))
hl.bind("SUPER + TAB", hl.dsp.window.cycle_next())
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd(cfg.emoji_picker))
hl.bind("SUPER + PERIOD", hl.dsp.exec_cmd(cfg.symbol_picker))
hl.bind("SUPER + B", hl.dsp.exec_cmd(cfg.status_bar))
hl.bind("SUPER + ALT + N",
    hl.dsp.exec_cmd(cfg.terminal .. "--class=floating --execute zsh -c \"source ~/.config/zsh/common; russ read\""))
hl.bind("CTRL + SUPER + V", hl.dsp.exec_cmd(cfg.clipboard))
hl.bind("SUPER + N", hl.dsp.exec_cmd(cfg.notification_center))
hl.bind("SUPER + F9", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle_dnd.sh"))
hl.bind("SUPER + F10",
    hl.dsp.exec_cmd("(killall hypridle && notify 'Toggled Hypridle off') || (notify 'Toggled Hypridle on' && hypridle)"))
hl.bind("SUPER + F11", hl.dsp.exec_cmd("~/.scripts/toggle_pywal.sh"))
hl.bind("SUPER + XF86Tools", hl.dsp.exec_cmd(cfg.toggle_bluelight_filter))

-- Wallpaper keybinds
hl.bind("SUPER + F5", hl.dsp.exec_cmd("~/.scripts/random_wallpaper.sh"))
hl.bind("SUPER + F6", hl.dsp.exec_cmd("~/.scripts/random_wallpaper_from_pic.re.sh"))
hl.bind("SUPER + F7", hl.dsp.exec_cmd("~/.scripts/toggle_wallpaper.sh"))
hl.bind("SUPER + F8", hl.dsp.exec_cmd("~/.scripts/save_wallpaper.sh"))

-- Window keybinds
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("ALT + F4", hl.dsp.window.kill())
hl.bind("SUPER + SHIFT + Q", function()
    hl.timer(function()
        hl.dispatch(hl.dsp.dpms({ action = "disable" }))
    end, { timeout = 50, type = "oneshot" })
    hl.exec_cmd("hyprshutdown")
    hl.timer(function()
        hl.dsp.dpms({ action = "enable" })
    end, { timeout = 1000, type = "oneshot" })
end)
hl.bind("SUPER + F", hl.dsp.window.fullscreen())
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen_state({ internal = 0, client = 2 }))
hl.bind("SUPER + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + P", hl.dsp.window.pseudo())
hl.bind("SUPER + S", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + ALT + S", hl.dsp.layout("swapsplit"))

-- Focus
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }))

-- Move
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }))

-- Resize
hl.bind("SUPER + CTRL + H", hl.dsp.window.resize({ x = -20, y = 0 }))
hl.bind("SUPER + CTRL + L", hl.dsp.window.resize({ x = 20, y = 0 }))
hl.bind("SUPER + CTRL + K", hl.dsp.window.resize({ x = 0, y = -20 }))
hl.bind("SUPER + CTRL + J", hl.dsp.window.resize({ x = 0, y = 20 }))

-- Workspace toggles
hl.bind("SUPER + M", hl.dsp.workspace.toggle_special("special"))
hl.bind("SUPER + MINUS", hl.dsp.window.move({ workspace = "special", follow = false }))
hl.bind("SUPER + C", hl.dsp.window.center())

-- Workspaces
hl.bind("SUPER + R", hl.dsp.workspace.swap_monitors({ monitor1 = 0, monitor2 = 1 }))

hl.bind("SUPER + 1", hl.dsp.focus({ workspace = "1" }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = "2" }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = "3" }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = "4" }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = "5" }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = "6" }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = "7" }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = "8" }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = "9" }))
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = "10" }))

hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = "6" }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = "7" }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = "8" }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = "9" }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))

hl.bind("SUPER + ALT + 1", hl.dsp.window.move({ workspace = "1", follow = false }))
hl.bind("SUPER + ALT + 2", hl.dsp.window.move({ workspace = "2", follow = false }))
hl.bind("SUPER + ALT + 3", hl.dsp.window.move({ workspace = "3", follow = false }))
hl.bind("SUPER + ALT + 4", hl.dsp.window.move({ workspace = "4", follow = false }))
hl.bind("SUPER + ALT + 5", hl.dsp.window.move({ workspace = "5", follow = false }))
hl.bind("SUPER + ALT + 6", hl.dsp.window.move({ workspace = "6", follow = false }))
hl.bind("SUPER + ALT + 7", hl.dsp.window.move({ workspace = "7", follow = false }))
hl.bind("SUPER + ALT + 8", hl.dsp.window.move({ workspace = "8", follow = false }))
hl.bind("SUPER + ALT + 9", hl.dsp.window.move({ workspace = "9", follow = false }))
hl.bind("SUPER + ALT + 0", hl.dsp.window.move({ workspace = "10", follow = false }))

hl.bind("SUPER + P", function()
    hl.dsp.window.pin()
    if hl.get_active_window().pinned then
        hl.dsp.exec_cmd("notify-send Window pinned")
    else
        hl.dsp.exec_cmd("notify-send Window unpinned")
    end
end)

-- Mouse
hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind("SUPER + mouse:273", hl.dsp.window.resize())

-- Media buttons
hl.bind("XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%+; ~/.config/hypr/scripts/display_volume.sh"))
hl.bind("XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-; ~/.config/hypr/scripts/display_volume.sh"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"))
