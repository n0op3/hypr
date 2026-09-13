require("utils")

local home = os.getenv("HOME")

local mod_key = "SUPER"
local mod_key2 = "ALT"

local scripts_dir = home .. "/.config/hypr/scripts"

local notify = "notify-send -h string:x-canonical-private-synchronous:hypr-cfg -u low"
local bluelight_filter = "hyprsunset"

function grimblast(args)
    hl.exec_cmd("grimblast " .. args)
end

return {
    mod_key = mod_key,
    mod_key2 = mod_key2,
    scripts_dir = scripts_dir,
    notify = notify,
    notification_daemon = "swaync",
    notification_center = "swaync-client -sw -t",
    browser = "librewolf",
    volume = scripts_dir .. "/volume",
    screenshot_edit = "wl-paste | satty --filename - --early-exit",
    screenshot_area = hl.plugin.hyprcapture.open,
    file_manager = function()
        Terminal("yazi")
    end,
    clipboard = function()
        Terminal("clipse", "floating")
    end,
    screen_lock = "hyprlock -q",
    app_launcher = "killall rofi || rofi -show drun",
    config_switcher =
    "killall rofi || rofi -show theme_switcher -modes \"theme_switcher:~/.config/rofi/scripts/config_switcher.sh\"",
    pywal_switcher =
    "killall rofi || rofi -show theme_switcher -modes \"theme_switcher:~/.config/rofi/scripts/theme_switcher.sh\"",
    layout_switcher =
    "killall rofi || rofi -show layout_switcher -modes \"layout_switcher:~/.config/rofi/scripts/hyprland_layout.sh\"",
    window_switcher = "killall rofi || rofi -show window -config ~/.config/rofi/configs/window/config.rasi",
    widgets = "qs kill -c desktop || qs -n -c desktop",
    osd = "syshud -o v -p right",
    power_menu = "killall rofi || rofi -show powermenu -modes \"powermenu:rofi-power-menu\"",
    emoji_picker = "killall rofi || rofi -show emoji -display-emoji \"Pick an emoji\"",
    symbol_picker = "killall rofi || unipicker --command \"rofi -dmenu\" | wl-copy -n",
    status_bar = "pkill .waybar-wrapped || waybar",
    polkit_agent = "systemctl --user start hyprpolkitagent",
    editor = "nvim",
    bluelight_filter = bluelight_filter,
    toggle_bluelight_filter = "(killall " .. bluelight_filter
        .. " && " .. notify
        .. " Bluelight off) || (" .. notify
        .. " Bluelight on && " .. bluelight_filter
        .. ")"
}
