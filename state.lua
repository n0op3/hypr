State = {}

hl.on("config.reloaded", function()
    Update_state()
    Update_rounding()
end)

function Update_state()
    State = { powersave = false, rounding = 8 }
end
