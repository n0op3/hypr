require("utils")

function Toggle_simple_mode()
    State.simple = not State.simple

    if State.simple then
        State.rounding = 0
        hl.config({
            general = { gaps_in = 0, gaps_out = 0 },
            animations = { enabled = false },
            decoration = { rounding = 0, blur = { enabled = false, } }
        })
    else
        hl.exec_cmd("hyprctl reload")
    end

    Notify("Toggled simple mode " .. tostring((State.simple and "on") or "off"))
    Update_rounding()
end
