function Notify(message)
    hl.exec_cmd("notify-send -h string:x-canonical-private-synchronous:hypr-cfg -u low Hyprland '" .. tostring(message)
        .. "'")
end

function Update_rounding()
    local rofi_rounding, err = io.open(os.getenv("HOME") .. "/.cache/rofi-rounding.rasi", "w")

    if not rofi_rounding then
        error(err)
    end

    rofi_rounding:write("window { border-radius: " .. State.rounding .. "px; }")
    rofi_rounding:close()

    local swaync_rounding, err = io.open(os.getenv("HOME") .. "/.cache/swaync-rounding.css", "w")

    if not swaync_rounding then
        error(err)
    end

    swaync_rounding:write("* { border-radius: " .. State.rounding
        .. "px; transition: " .. tostring((State.simple and 0) or 200)
        .. "ms; }")
    swaync_rounding:close()

    hl.exec_cmd("swaync-client --reload-css")
end

function Terminal(command, class)
    local cmd = "kitty"

    if class and class ~= "" then
        cmd = cmd .. " --class " .. class
    end

    if command and command ~= "" then
        cmd = cmd .. " zsh -c \"source ~/.config/zsh/common; " .. command .. "\""
    end

    hl.exec_cmd(cmd)
end

function File_empty(path)
    local file = io.open(path, "rb")
    if not file then
        return true
    end

    local size = file:seek("end")
    file:close()

    return size == 0
end

function Read_command_output(command)
    local cmd = io.popen(command)

    if cmd == nil then
        return nil
    end

    local out = cmd:read("*l")
    cmd:close()
    return out
end

function Shutdown()
    hl.timer(function()
        hl.dispatch(hl.dsp.dpms({ action = "disable" }))
    end, { timeout = 50, type = "oneshot" })
    hl.exec_cmd("hyprshutdown")
    hl.timer(function()
        hl.dispatch(hl.dsp.exit())
    end, { timeout = 2000, type = "oneshot" })
end

function Layout_bind(bind_table)
    return function()
        local workspace = hl.get_active_special_workspace() or hl.get_active_workspace()

        if not workspace then
            return
        end

        local layout = workspace.tiled_layout

        if bind_table[layout] then
            hl.dispatch(bind_table[layout])
        end
    end
end

local MAX_ZOOM = 3
local MIN_ZOOM = 1

function Zoom(offset)
    local current = hl.get_config("cursor.zoom_factor")
    if offset ~= nil then
        current = current + offset
    else
        current = 1.0
    end
    current = math.max(MIN_ZOOM, math.min(MAX_ZOOM, current))
    hl.config({ cursor = { zoom_factor = current } })
end
