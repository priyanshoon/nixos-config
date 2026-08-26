{ pkgs, ... }:
let
  clipping = pkgs.writeScriptBin "clipping" ''
    cliphist list | wofi -dmenu | cliphist decode | wl-copy
  '';
in
{
  home.packages = [
    clipping
  ];

  xdg.configFile = {
    "hypr/hyprland.lua".source = ./hyprland.lua;
  };
}
