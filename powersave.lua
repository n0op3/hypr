require("utils")

function Toggle_powersave()
    State.powersave = not State.powersave

    if State.powersave then
        State.rounding = 0
        hl.config({
            general = { gaps_in = 0, gaps_out = 0 },
            animations = { enabled = false },
            decoration = { rounding = 0, blur = { enabled = false, } }
        })
    else
        hl.exec_cmd("hyprctl reload")
    end

    Notify("Toggled powersave " .. tostring((State.powersave and "on") or "off"))
    Update_rounding()
end
