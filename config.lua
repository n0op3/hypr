local home = os.getenv("HOME")

local mod_key = "SUPER"
local mod_key2 = "ALT"

local scripts_dir = home .. "/.config/hypr/scripts"

local notify = "notify-send -h string:x-canonical-private-synchronous:hypr-cfg -u low"
local terminal = "kitty"
local bluelight_filter = "hyprsunset"

function grimblast(args)
    hl.config({ cursor = { no_hardware_cursors = 0 } })
    hl.exec_cmd("grimblast " .. args)
    hl.timer(function()
        hl.config({ cursor = { no_hardware_cursors = 1 } })
    end, { timeout = 1500, type = "oneshot" })
end

return {
    mod_key = mod_key,
    mod_key2 = mod_key2,
    scripts_dir = scripts_dir,
    notify = notify,
    notification_daemon = "swaync",
    notification_center = "swaync-client -sw -t",
    terminal = terminal,
    browser = "zen-beta",
    volume = scripts_dir .. "/volume",
    screenshot_edit = "wl-paste | satty --filename - --early-exit",
    screenshot_area = function()
        grimblast("--freeze copy area")
    end,
    screenshot_full = function()
        grimblast("-c --freeze copy screen")
    end,
    file_manager =
        terminal .. " --execute zsh -c \"source ~/.config/zsh/common; yazi\"",
    clipboard =
        terminal
        .. " --override font.size=10 --class floating --execute zsh -c 'source ~/.config/zsh/common && clipse'",
    screen_lock = "hyprlock",
    app_launcher = "killall rofi || rofi -show drun",
    config_switcher =
    "killall rofi || rofi -show theme_switcher -modes \"theme_switcher:~/.config/rofi/scripts/config_switcher.sh\"",
    window_switcher =
    "killall rofi || rofi -show window -config ~/.config/rofi/configs/window/config.rasi",
    osd = "syshud -o v -p right",
    power_menu =
    "killall rofi || rofi -show powermenu -modes \"powermenu:rofi-power-menu\"",
    emoji_picker =
    "killall rofi || rofi -show emoji -display-emoji \"Pick an emoji\"",
    symbol_picker =
    "killall rofi || unipicker --command \"rofi -dmenu\" | wl-copy -n",
    status_bar = "pkill .waybar-wrapped || waybar",
    polkit_agent = "systemctl --user start hyprpolkitagent",
    editor = "nvim",
    bluelight_filter = bluelight_filter,
    toggle_bluelight_filter =
        "(killall "
        .. bluelight_filter
        .. " && "
        .. notify
        .. " Bluelight off) || ("
        .. notify
        .. " Bluelight on && "
        .. bluelight_filter
        .. ")",
}
