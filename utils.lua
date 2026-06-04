function Notify(message)
    hl.exec_cmd("notify-send -h string:x-canonical-private-synchronous:hypr-cfg -u low Hyprland '" ..
        tostring(message) .. "'")
end

function Update_rounding()
    os.execute("mkdir -p ~/.cache/rofi")
    local rofi_rounding, err = io.open(os.getenv("HOME") .. "/.cache/rofi/rounding.rasi", "w")

    if not rofi_rounding then
        error(err)
    end

    rofi_rounding:write("window { border-radius: " .. State.rounding .. "px; }")
    rofi_rounding:close()
end
