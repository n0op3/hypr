local cfg = require("config")

local home = os.getenv("HOME")
local path = os.getenv("PATH") or ""

-- XDG
hl.env("TERMINAL", "$terminal")

-- QT
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- GTK
hl.env("GDK_BACKEND", "wayland,x11")
hl.env("GTK_USE_PORTAL", "0")

-- fcitx
hl.env("GTK_IM_MODULE", "")
hl.env("SDL_IM_MODULE", "fcitx")
hl.env("XMODIFIERS", "@im=fcitx")

hl.env("wallpapers_path", home .. "/Pictures/Wallpapers")
hl.env(
    "PATH",
    home .. "/.scripts:" .. home .. "/.local/bin:" .. home .. "/.cargo/bin:" .. path .. ":" .. home .. "/Apps:" .. home
    .. "/.deno/bin"
)
hl.env("EDITOR", cfg.editor)
hl.env("CMAKE_BUILD_PARALLEL_LEVEL", "8")
