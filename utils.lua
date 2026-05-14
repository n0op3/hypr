function Notify(message)
    hl.exec_cmd("notify-send -h string:x-canonical-private-synchronous:hypr-cfg -u low Hyprland '" ..
    tostring(message) .. "'")
end
