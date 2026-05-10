-- XDG
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("TERMINAL", "$terminal")

-- QT
hl.env("GDK_BACKEND", "wayland")
-- hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
-- hl.env("QT_STYLE_OVERRIDE", "kvantum")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- GTK
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE", "22")
hl.env("GDK_BACKEND,wayland,x11", "xcb")
hl.env("GTK_USE_PORTAL", "0")

-- Misc
hl.env("SDL_VIDEODRIVER,wayland", "x11")
hl.env("_JAVA_AWT_WM_NONREPARENTING", "1")
hl.env("MOZ_DISABLE_RDD_SANDBOX", "1")
hl.env("MOZ_ENABLE_WAYLAND", "1")

-- Electron
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("NVD_BACKEND", "direct")

-- fcitx
hl.env("GTK_IM_MODULE", "")
hl.env("SDL_IM_MODULE", "fcitx")
hl.env("XMODIFIERS", "@im=fcitx")

hl.env("wallpapers_path", "$HOME/Pictures/Wallpapers")
hl.env("PATH", "$HOME/.scripts:$PATH:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/Apps:$HOME/.deno/bin")
hl.env("EDITOR", "$editor")
hl.env("CMAKE_BUILD_PARALLEL_LEVEL", "8")
