{ lib, config, pkgs, ... }:

let
    isHiguruma = config.networking.hostName == "higuruma";
    rawConfig = builtins.readFile ./config.kdl;
in
{
    config = lib.mkIf isHiguruma {
        xdg.configFile."niri/config.kdl".text = ''
            ${rawConfig}
        '';
    };
}
