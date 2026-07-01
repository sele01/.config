-- ~/.config/hypr/startup.lua

hl.on("hyprland.start", function ()
    -- Launch your status bar (Waybar) in the background
    hl.exec_cmd("waybar &")
    
    -- Launch your wallpaper utility
    hl.exec_cmd("hyprpaper &")
    
    -- Start the clipboard history daemon (used by your SUPER+V shortcut)
    hl.exec_cmd("wl-paste --type text --watch cliphist store &")
    hl.exec_cmd("wl-paste --type image --watch cliphist store &")
    
    -- Start your notification manager
    hl.exec_cmd("mako &")
end)
