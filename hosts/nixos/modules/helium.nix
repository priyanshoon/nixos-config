{ pkgs, inputs, ... }:
{
    nixpkgs.overlays = [inputs.helium.overlays.default];
    environment.systemPackages = [
        pkgs.helium 
    ];
}
