hl.workspace_rule({ workspace = "1", monitor = "DP-1", default = true })

hl.on("hyprland.start", function()
    hl.dispatch(hl.dsp.focus({ monitor = "DP-1" }))
end)
