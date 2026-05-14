require("utils")

function Toggle_powersave()
    Settings.powersave = not Settings.powersave

    if Settings.powersave then
        hl.config({
            animations = { enabled = false },
            decoration = { rounding = 0, blur = { enabled = false, } }
        })
    else
        hl.exec_cmd("hyprctl reload")
    end

    Notify("Toggled powersave " .. tostring((Settings.powersave and "on") or "off"))
end
