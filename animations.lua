hl.config({
    animations = {
        enabled = true
    }
})

hl.curve("quick", { type = "bezier", points = { { 0.33, 0.7 }, { 0.6, 0.98 } } })
hl.curve("linear", { type = "bezier", points = { { 1, 1 }, { 1, 1 } } })

hl.animation({ leaf = "windowsIn", enabled = true, speed = 1.5, bezier = "quick", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 1.5, bezier = "quick", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1, bezier = "quick", style = "slide" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 1, bezier = "quick", style = "popin" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1, bezier = "quick", style = "popin" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 1, bezier = "quick", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 1, bezier = "linear" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 1, bezier = "linear", style = "once" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1, bezier = "quick", style = "slidevert" })
