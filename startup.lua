require("config")

hl.on("hyprland.start", function()
    -- Misc
    hl.exec_cmd("rfkill unblock all")
    hl.exec_cmd("dbus-update-activation-environment --all -- for XDP")
    hl.exec_cmd(polkit_agent)
    hl.exec_cmd("echo pl > /tmp/kb_layout")
    hl.exec_cmd(bluelight_filter)

    -- Daemons
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("otd-daemon")
    hl.exec_cmd("kdeconnectd")
    hl.exec_cmd("kdeconnect-indicator")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("clipse -listen")
    hl.exec_cmd("fcitx5")
    hl.exec_cmd("~/.scripts/notify_when_battery_reaches.sh 20")
    hl.exec_cmd("pywalfox start")
    hl.exec_cmd(notification_daemon)
    hl.exec_cmd("/sbin/pypr")
    hl.exec_cmd(status_bar)
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("bluetooth off")
    hl.exec_cmd(osd)
    hl.exec_cmd("rm ~/.cache/hyprland-powersave")

    -- Messengers
    hl.exec_cmd("signal-desktop --start-in-tray")
    hl.exec_cmd("vesktop --start-minimized")
    hl.exec_cmd("thunderbird")
end)
