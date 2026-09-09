State = {}

hl.on("config.reloaded", function()
    Update_state()
    Update_rounding()
end)

function Update_state()
    State = { simple_mode = false, rounding = 6 }
end
