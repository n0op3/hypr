-- Float
local float_matches = {
    { class = "^(floating)$" },
    { class = "^(com.saivert.pwvucontrol)$" },
    { class = "^(com.gabm.satty)$" },
    { class = "^(xdg-desktop-portal-gtk)$" },
    { title = "^(Save File)$" },
    { title = "^(File Operation Progress)$" },
    { title = "^(Confirm to replace files)$" },
    { title = "^(branchdialog)$" },
    { title = "^(Open File)$" },
    { class = "^(confirmreset)$" },
    { class = "^(error)$" },
    { class = "^(notification)$" },
    { class = "^(download)$" },
    { class = "^(dialog)$" },
    { class = "^(confirm)$" },
    { class = "^(file_progress)$" },
    { title = "^(Picture-in-Picture)$" },
    { title = "^(Media viewer)$" },
    { class = "^(org.kde.polkit-kde-authentication-agent-1)$" },
    { title = "^(Select what to share)$" },
    { class = "blueman-manager" },
    {
        initial_title = "^(Search Actions)$",
        initial_class = "^(gimp)$"
    }
}

for _, rule in ipairs(float_matches) do
    hl.window_rule({ match = rule, float = true, center = true, size = { 820, 600 } })
end
hl.window_rule({ match = { class = "^(floating-big)$" }, float = true, center = true, size = { 980, 700 } })

hl.window_rule({ match = { class = "(fullscreen)" }, fullscreen = true })

-- Wine
hl.window_rule({ match = { class = "^(explorer.exe)$", title = "^()$" }, size = { 20, 20 } })
hl.window_rule({ match = { class = "^(explorer.exe)$", title = "^()$" }, rounding = 0 })
hl.window_rule({ match = { class = "^(explorer.exe)$", title = "^()$" }, move = "monitor_w-20 0" })
hl.window_rule({ match = { class = "(.*\\.exe)$" }, float = true })

-- xwaylandvideobridge
hl.window_rule({
    match = { class = "^(xwaylandvideobridge)$" },
    opacity = "0.0 override 0.0 override",
    no_anim = true,
    no_initial_focus = true
})

-- KDE Connect
hl.window_rule({
    match = { class = "^(org.kde.kdeconnect.daemon)$" },
    float = true,
    border_size = 0,
    no_shadow = true,
    size = "(monitor_w*1) (monitor_h*1)",
    no_initial_focus = true,
    no_anim = true,
    no_blur = true
})
hl.window_rule({
    match = { initial_title = "^(Receiving files — KDE Connect Daemon)$" },
    float = true,
    size = "(monitor_w*0.25) (monitor_h*0.2)"
})
hl.window_rule({
    match = { initial_title = "^(Receiving file — KDE Connect Daemon)$" },
    float = true,
    size = "(monitor_w*0.25) (monitor_h*0.2)"
})

-- Pinned
hl.window_rule({ match = { pin = true }, opacity = 1 })

-- Layer rules
hl.layer_rule({
    name = "swaync_slide",
    match = { namespace = "swaync-control-center" },
    animation = "slide right"
})

hl.layer_rule({
    name = "screenshot_fix",
    match = { namespace = "selection|hyprpicker" },
    no_anim = true
})

hl.layer_rule({
    name = "rofi_no_anim",
    match = { namespace = "rofi" },
    no_anim = true
})

hl.layer_rule({
    name = "awww-animation",
    match = { namespace = "awww-daemon" },
    animation = "fadein"
})

hl.layer_rule({
    name = "waybar-animation",
    match = { namespace = "waybar" },
    animation = "slide top"
})

hl.layer_rule({
    name = "hyprshutdown-animation",
    match = { namespace = "hyprshutdown" },
    animation = "fadein"
})
