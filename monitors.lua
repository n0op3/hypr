hl.monitor({
    output = "DP-1",
    mode = "2560x1440@180",
    position = "0x0",
    scale = 1,
    bitdepth = 10
})

hl.monitor({
    output = "eDP-1",
    mode = "preferred",
    position = "2560x360",
    scale = 1,
    bitdepth = 10
})

hl.monitor({
    output = "*",
    mode = "preferred"
})
