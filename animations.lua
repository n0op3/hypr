hl.config({
    animations = {
        enabled = true
    }
})

-- Curves
hl.curve("quick", { type = "bezier", points = { { 0.33, 0.7 }, { 0.6, 0.98 } } })
hl.curve("linear", { type = "bezier", points = { { 1, 1 }, { 1, 1 } } })
hl.curve("snappy", { type = "bezier", points = { { 0.5, 0.35 }, { 0.9, 0.85 } } })

-- Workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 0.7, bezier = "snappy", style = "slide" })

-- Windows
hl.animation({ leaf = "fadeIn", enabled = false })
hl.animation({ leaf = "fadeOut", enabled = false })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 1.1, bezier = "snappy", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.4, bezier = "snappy", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 0.9, bezier = "snappy", style = "slide" })

hl.animation({ leaf = "layersIn", enabled = true, speed = 1, bezier = "quick", style = "popin" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1, bezier = "quick", style = "popin" })

hl.animation({ leaf = "border", enabled = true, speed = 1.5, bezier = "linear" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 1, bezier = "linear", style = "once" })

hl.animation({ leaf = "zoomFactor", enabled = true, speed = 1, bezier = "snappy" })
