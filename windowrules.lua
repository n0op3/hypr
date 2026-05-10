-- Float
hl.window_rule({ match = { class = "^(org.kde.polkit-kde-authentication-agent-1)$" }, float = true })
hl.window_rule({ match = { class = "^(pavucontrol)$" }, float = true })
hl.window_rule({ match = { title = "^(iwgtk)$" }, float = true })
hl.window_rule({ match = { title = "^(Media viewer)$" }, float = true })
hl.window_rule({ match = { title = "^(Picture-in-Picture)$" }, float = true })
hl.window_rule({ match = { class = "^(file_progress)$" }, float = true })
hl.window_rule({ match = { class = "^(confirm)$" }, float = true })
hl.window_rule({ match = { class = "^(dialog)$" }, float = true })
hl.window_rule({ match = { class = "^(download)$" }, float = true, size = { 800, 600 } })
hl.window_rule({ match = { class = "^(notification)$" }, float = true })
hl.window_rule({ match = { class = "^(error)$" }, float = true })
hl.window_rule({ match = { class = "^(confirmreset)$" }, float = true })
hl.window_rule({ match = { title = "^(Open File)$" }, float = true, size = { 800, 600 } })
hl.window_rule({ match = { title = "^(branchdialog)$" }, float = true })
hl.window_rule({ match = { title = "^(Confirm to replace files)$" }, float = true })
hl.window_rule({ match = { title = "^(File Operation Progress)$" }, float = true })
hl.window_rule({ match = { title = "^(Save File)$" }, float = true, size = { 800, 600 } })
hl.window_rule({ match = { initial_class = "^(file-png)$" }, float = true })
hl.window_rule({ match = { class = "^(com.gabm.satty)$" }, float = true })

hl.window_rule({
    match = {
        initial_title = "^(Search Actions)$",
        initial_class = "^(gimp)$"
    },
    float = true,
    size = { 500, 600 }
})

hl.window_rule({ match = { class = "(floating)" }, float = true, size = { 800, 600 }, center = true })
hl.window_rule({ match = { class = "(floating)" }, animation = "popin", size = { 800, 600 }, center = true })

-- Size
hl.window_rule({ match = { title = "^(Volume Control)$" }, size = { 800, 600 } })
hl.window_rule({ match = { class = "^(sidebar)$" }, size = { 400, 1080 } })
hl.window_rule({ match = { class = "^(blender)$" }, size = { 1000, 900 } })
hl.window_rule({ match = { class = "^(blender)$" }, center = true })
hl.window_rule({ match = { class = "(fullscreen)" }, fullscreen = true })

-- Wine
hl.window_rule({ match = { class = "^(explorer.exe)$", title = "^()$" }, size = { 20, 20 } })
hl.window_rule({ match = { class = "^(explorer.exe)$", title = "^()$" }, rounding = 0 })
hl.window_rule({ match = { class = "^(explorer.exe)$", title = "^()$" }, move = "monitor_w-20 0" })
hl.window_rule({ match = { class = "(.*\\.exe)$" }, float = true })

hl.window_rule({ match = { class = "^(mpv)$" }, idle_inhibit = "focus" })

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
hl.window_rule({ match = { pin = true }, opacity = "100% 100%" })

-- Layer rules
hl.layer_rule({
    name = "swaync_slide",
    namespace = "swaync-control-center",
    animation = "slide right"
})

hl.layer_rule({
    name = "screenshot_fix",
    namespace = "hyprpicker",
    no_anim = true
})

hl.layer_rule({
    name = "screenshot_fix",
    namespace = "selection",
    no_anim = true
})

hl.layer_rule({
    name = "swww-animation",
    namespace = "swww-daemon",
    animation = "fadein"
})

hl.layer_rule({
    name = "waybar-animation",
    namespace = "waybar",
    animation = "slide top"
})

hl.layer_rule({
    name = "hyprshutdown-animation",
    namespace = "hyprshutdown",
    animation = "fadein"
})
