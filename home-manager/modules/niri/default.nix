{ config, pkgs, ... }:

let
  rawConfig = builtins.readFile ./config.kdl;
in
{
  xdg.configFile."niri/config.kdl".text = ''
    ${rawConfig}
  '';
}
