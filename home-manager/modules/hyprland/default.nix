{ pkgs, ... }:
let 
    clipping = pkgs.writeScriptBin "clipping" ''
    cliphist list | wofi -dmenu | cliphist decode | wl-copy && \
      notify-send "Clipboard" "Item copied to clipboard"
    '';
in {
    home.packages = [
        clipping
    ];

    xdg.configFile = {
        "hypr/hyprland.lua".source =  ./hyprland.lua;
    };
}
