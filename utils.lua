function Notify(message)
    hl.exec_cmd("notify-send -h string:x-canonical-private-synchronous:hypr-cfg -u low Hyprland '" ..
        tostring(message) .. "'")
end

function Update_rounding()
    local rofi_rounding, err = io.open(os.getenv("HOME") .. "/.cache/rofi-rounding.rasi", "w")

    if not rofi_rounding then
        error(err)
    end

    rofi_rounding:write("window { border-radius: " .. State.rounding .. "px; }")
    rofi_rounding:close()

    local swaync_rounding, err = io.open(os.getenv("HOME") .. "/.cache/swaync-rounding.css", "w")

    if not swaync_rounding then
        error(err)
    end

    swaync_rounding:write("* { border-radius: " ..
        State.rounding .. "px; transition: " .. tostring((State.powersave and 0) or
            200) .. "ms; }")
    swaync_rounding:close()

    hl.exec_cmd("swaync-client --reload-css")
end
